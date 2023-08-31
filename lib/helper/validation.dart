class InputValidator {
  static bool isEmail(String input) {
    final emailRegex = RegExp(
      r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$',
    );
    return emailRegex.hasMatch(input);
  }

  static bool isMobileNumber(String input) {
    final mobileRegex = RegExp(r'^\d{10}$'); // Assuming a 10-digit mobile number
    return mobileRegex.hasMatch(input);
  }

  static bool isName(String input) {
    final nameRegex = RegExp(r'^[a-zA-Z ]+$'); // Allow letters and spaces
    return nameRegex.hasMatch(input);
  }

  static bool isAge(String input) {
    final age = int.tryParse(input);
    return age != null && age >= 18;
  }
}
