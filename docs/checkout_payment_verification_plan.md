# Checkout & Payment Verification — Final Plan

Single source of truth for payment outcome: **query order** (backend). We never trust SDK response. Query order is called **only once**, and **only when the user has left the payment screen/app**.

---

## 1. Flow Overview

```
Place order
  → Order created (orderId, method, txn_ref for Chapa)
  → Open payment handler (method, data)
  → Initiate payment (Telebirr app / Chapa Navigator.push)
  → User leaves payment screen/app
  → Checkout detects (Telebirr: app resumed | Chapa: route popped)
  → Show undismissible dialog "We are processing your payment"
  → Call query order (orderId, method, txn_ref for Chapa)
  → Backend returns success or fail (always one of the two)
  → If success: dismiss dialog, clear cart, navigate
  → If fail: show Retry + Skip (Retry = query again, Skip = dismiss, don't clear cart)
```

---

## 2. Responsibilities

| Component | Responsibility |
|-----------|----------------|
| **Order notifier** | Place order only. Call create-order API. Emit order created with `orderId`, `method`, and for Chapa `txn_ref`. No payment SDK, no query order. |
| **Payment handler** (new, not a widget) | Open payment (Telebirr or Chapa with given data). Expose `resolvePayment()` that calls query order once and reports success/fail. Guard with flag so resolve runs only once. |
| **Checkout screen** | Listen to order created → set "waiting for payment", open payment via handler. Own **detection**: Telebirr = `WidgetsBindingObserver` (resumed), Chapa = `RouteAware` (didPopNext). When detected → show dialog, call handler.resolvePayment(), then handle result (success/fail with Retry/Skip). |
| **Query order API** | Params: `orderId`, `method`; for Chapa add `txn_ref`. Returns **success** or **fail** only (timeouts/errors mapped to fail). |

---

## 3. When Query Order Is Called

- **Only** when checkout has detected that the **payment screen/app has been left**:
  - **Telebirr:** app went to background then came back → `AppLifecycleState.resumed`.
  - **Chapa:** route pushed by SDK was popped → `RouteAware.didPopNext`.
- **Not** on checkout screen init, not on any other event. Single trigger, single call per payment.

---

## 4. Dialog Behavior

- Shown when we **start** calling query order (after detection).
- **Undismissible** until backend returns (user cannot tap outside or back to close).
- **Success:** dismiss dialog, clear cart, navigate (e.g. to orders).
- **Fail:** do not auto-dismiss. Show **Retry** and **Skip**:
  - **Retry:** call query order again (same orderId, method, txn_ref).
  - **Skip:** dismiss dialog, do not clear cart.

---

## 5. Detection Details

- **Telebirr:** Opens external app → our app gets `paused` then `resumed`. Checkout uses `WidgetsBindingObserver`; when `resumed` and state is "waiting for payment" → trigger resolve.
- **Chapa:** Uses `Navigator.push` on top of checkout. When user backs or finishes, that route pops. Checkout is `RouteAware` and subscribes to a `RouteObserver`; when `didPopNext` and "waiting for payment" → trigger resolve.
- After triggering resolve, clear "waiting for payment" immediately so we do not run resolve again on a second event.

---

## 6. Pseudo Code

### 6.1 Order notifier

```
PROVIDER: OrderNotifier (keepAlive: true)

createOrder(data: OrderRequestData):
  setLoading(true)
  try
    response = await createOrderApi(data)
    response.fold(
      failure -> emit(OrderFailure(failure))
      success -> emit(OrderCreated(success))  // carries orderId, method, txn_ref for Chapa
    )
  finally
    setLoading(false)
```

---

### 6.2 Payment handler (new file, logic only)

```
CLASS: PaymentHandler (or similar; not a widget)

DATA HELD (per session):
  orderId, method, txnRef? (Chapa), resolved: bool = false

openPayment(method, data, context?):
  if method == TELEBIRR:
    startTelebirr(data.receiveCode)
  else if method == CHAPA:
    startChapa(context, data.chapaParams)  // data includes txn_ref we generated
  // Store orderId, method, txnRef from data for later resolve

resolvePayment():
  if resolved:
    return
  resolved = true
  result = await queryOrderApi(orderId, method, txnRef?)  // always success or fail
  reportResult(result)  // callback or provider: success | fail
```

---

### 6.3 Checkout screen

```
STATE:
  waitingForPayment: bool = false
  pendingPaymentData: { orderId, method, txnRef? } | null

LISTEN: order notifier events
  on OrderCreated(createOrderResponse):
    pendingPaymentData = { orderId, method, txnRef from createOrderResponse }
    waitingForPayment = true
    paymentHandler.openPayment(method, buildDataFrom(createOrderResponse), context?)
    // Payment UI is now open (Telebirr app or Chapa route)

OBSERVER 1 — WidgetsBindingObserver (for Telebirr):
  didChangeAppLifecycle(state):
    if state == resumed AND waitingForPayment AND method == TELEBIRR:
      onPaymentScreenLeft()

OBSERVER 2 — RouteAware (for Chapa):
  didPopNext():
    if waitingForPayment AND method == CHAPA:
      onPaymentScreenLeft()

onPaymentScreenLeft():
  waitingForPayment = false
  showDialog(undismissible: true, message: "We are processing your payment")
  paymentHandler.resolvePayment()
  when result:
    success ->
      dismissDialog()
      clearCart()
      navigate(e.g. to orders)
    fail ->
      updateDialog(showRetryAndSkip = true)
      on Retry -> paymentHandler.resolvePayment() again (handler may allow one retry or reset resolved flag for Retry)
      on Skip -> dismissDialog()
```

---

### 6.4 Query order API (contract)

```
queryOrder(orderId, method, txnRef?):
  GET or POST to backend
  Params: orderId, method; if Chapa include txnRef
  Response: { status: "success" | "fail" }
  (Timeout/network errors mapped to "fail" by app or backend — always one of two states)
```

---

### 6.5 Dialog UI (pseudo)

```
WHILE waiting for query order result:
  Show dialog:
    barrierDismissible: false
    content: "We are processing your payment"
    (no buttons)

ON result == fail:
  Same dialog, update content:
    message: e.g. "Payment could not be confirmed"
    buttons: [ Retry, Skip ]
  Retry -> call resolvePayment() again, show loading in dialog until next result
  Skip -> dismiss dialog
```

---

## 7. Summary Table

| Step | Who | Action |
|------|-----|--------|
| 1 | Checkout | User taps Place Order → call orderNotifier.createOrder(data) |
| 2 | Order notifier | Create order API → emit OrderCreated(orderId, method, txn_ref) |
| 3 | Checkout | On OrderCreated → set pendingPaymentData, waitingForPayment=true → paymentHandler.openPayment(...) |
| 4 | Payment handler | Start Telebirr or Chapa |
| 5 | User | Leaves payment (back / finish / external app return) |
| 6 | Checkout | Telebirr: resumed. Chapa: didPopNext. → waitingForPayment=false → show dialog → paymentHandler.resolvePayment() |
| 7 | Payment handler | resolvePayment() once → queryOrder(...) → report success or fail |
| 8 | Checkout | Success: dismiss, clear cart, navigate. Fail: dialog with Retry + Skip. |

Query order is called **only** at step 7, and only after step 6 (payment screen left). Never on checkout screen load or any other time.
