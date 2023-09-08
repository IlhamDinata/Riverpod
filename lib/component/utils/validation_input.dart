class ValidationInput {
  static bool isEmailValid(String value) {
    String pattern = r'^[^@]+@[^@]+\.[^@]+';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }

   static bool validationInputNotEmpty(String text) {
    return text.isNotEmpty;
  }

    static bool isConfirmPasswordMatch(String password, String confirmPassword) {
    return confirmPassword == password;
  }
}