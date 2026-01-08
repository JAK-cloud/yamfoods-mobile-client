url
http://192.168.85.164:3000?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsInBob25lIjoiMjUxOTMwMzEyODY0IiwiaWF0IjoxNzY3NjM3OTU1LCJleHAiOjE3Njc2NDY5NTV9.dJVNKGYxE4P0RIsjA4PHit-jGbuSFxm-mmqIIngZ138

message area
{ "orderId": 1 }

event name 
join_tracking

event listen tracking_joined
when send response
{
    "success": true,
    "data": {
        "message": "Joined tracking for order 1"
    },
    "meta": {
        "request_id": "b45f19d1-a907-4006-b268-972f4b268c55",
        "timestamp": "2026-01-05T18:36:05.685Z"
    }
}


events to be listened 
driver_location_updated



if you listen  driver_location_updated response
{
    "success": true,
    "data": {
        "orderId": 1,
        "lat": 38.72577,
        "lng": 8.991178,
        "heading": 141
    },
    "meta": {
        "request_id": "b2733db3-710d-4531-a7b6-d333d50a3a36",
        "timestamp": "2026-01-05T19:01:07.006Z"
    }
}

