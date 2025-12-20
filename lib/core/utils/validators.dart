
class Validators {
  static bool isValidEmail(String email) {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(email.trim().toLowerCase());
  }

  static bool isValidPhone(String phone) {
    final phoneRegex = RegExp(r'^\+?[0-9]{10,15}$');
    return phoneRegex.hasMatch(phone.trim());
  }

  static bool isValidEthiopianPhone(String phone) {
    // Accepts:
    // 9xxxxxxxx (9 digits, starts with 9)
    // 09xxxxxxxx (10 digits, starts with 09)
    final phoneRegex = RegExp(r'^(09\d{8}|9\d{8})$');
    return phoneRegex.hasMatch(phone.trim());
  }

  static String formatEthiopianPhone(String phone) {
    String p = phone.trim();
    if (p.startsWith('0')) {
      return '251${p.substring(1)}';
    } else if (p.startsWith('9')) {
      return '251$p';
    }
    return p;
  }

  static bool isValidOtp(String otp) {
    final otpRegex = RegExp(r'^\d{4,6}$');
    return otpRegex.hasMatch(otp.trim());
  }

  static bool isValidPassword(String password) {
    if (password.length < 6) return false;
    // Basic complexity: at least one uppercase, number (expand as needed)
    // final hasUpper = RegExp(r'[A-Z]').hasMatch(password);
    // final hasNumber = RegExp(r'\d').hasMatch(password);
    return true;
    // return hasUpper && hasNumber;
  }

  static String? validateName(String? value) {
    if (value == null || value.isEmpty) return 'Name is required';
    //check length mean 3
    if (value.length < 3) return 'Minimum 3 characters';
    return null;
  }

  static String? confirmPassword(String? value, String original) {
    if (value != original) return 'Passwords do not match';
    return null;
  }
}
