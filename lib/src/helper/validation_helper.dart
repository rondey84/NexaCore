class ValidatorHelper {
  /// Validates if the provided string is a valid email address.
  static String? email(String? value) {
    final RegExp emailRegex =
        RegExp(r'^[a-zA-Z0-9.a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$');
    if (value == null || value.isEmpty) {
      return 'Email is required.';
    } else if (!emailRegex.hasMatch(value)) {
      return 'Enter a valid email address.';
    }
    return null; // null indicates no error
  }

  /// Validates the strength of a password.
  static String? password(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required.';
    } else if (value.length < 8) {
      return 'Password should be at least 8 characters.';
    } else if (!RegExp(r'(?=.*?[#?!@$%^&*-])').hasMatch(value)) {
      return 'Password should contain at least one special character.';
    }
    return null; // null indicates no error
  }

  /// Validates if the provided string is a valid URL.
  static String? url(String? value) {
    final RegExp urlRegex = RegExp(
        r'^(https?:\/\/)?(www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&//=]*)$');
    if (value == null || value.isEmpty) {
      return 'URL is required.';
    } else if (!urlRegex.hasMatch(value)) {
      return 'Enter a valid URL.';
    }
    return null; // null indicates no error
  }

  /// Validates if the provided string is a valid phone number.
  static String? phoneNumber(String? value) {
    final RegExp phoneRegex =
        RegExp(r'^[0-9]{10}$'); // assuming a 10-digit phone number
    if (value == null || value.isEmpty) {
      return 'Phone number is required.';
    } else if (!phoneRegex.hasMatch(value)) {
      return 'Enter a valid 10-digit phone number.';
    }
    return null; // null indicates no error
  }

  /// Validates if the string is not empty.
  static String? nonEmpty(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'This field is required.';
    }
    return null; // null indicates no error
  }

  /// Validates if the string is a number.
  static String? numeric(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required.';
    } else if (!RegExp(r'^-?[0-9]+$').hasMatch(value)) {
      return 'Enter a valid number.';
    }
    return null; // null indicates no error
  }
}
