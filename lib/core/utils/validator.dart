// ignore_for_file: file_names

abstract class Validator {
  static String? email(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email cannot be empty';
    }

    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return 'Enter a valid email address';
    }
    return null;
  }

  static String? password(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password cannot be empty';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return 'Password must contain at least one uppercase letter';
    }
    if (!RegExp(r'[0-9]').hasMatch(value)) {
      return 'Password must contain at least one number';
    }
    if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
      return 'Password must contain at least one special character';
    }
    return null;
  }

  static String? confirmPassword(String? value, String password) {
    if (value == null || value.isEmpty) {
      return 'Confirm password cannot be empty';
    }

    if (value != password) {
      return 'Passwords do not match';
    }
    return null;
  }

  static String? userName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Username cannot be empty';
    }
    if (value.length > 20) {
      return 'Username cannot be more than 20 characters';
    }
    return null;
  }

  static String? firstName(String? value) {
    if (value == null || value.isEmpty) {
      return 'First name cannot be empty';
    }
    if (value.length > 20) {
      return 'First name cannot be more than 20 characters';
    }
    return null;
  }

  static String? lastName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Last name cannot be empty';
    }
    if (value.length > 20) {
      return 'Last name cannot be more than 20 characters';
    }
    return null;
  }

  static String? phoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number cannot be empty';
    }
    if (value.length != 11) {
      return 'Phone number must be 11 digits';
    }
    if (!RegExp(r'^01[0125][0-9]{8}$').hasMatch(value)) {
      return 'Enter a valid Egyptian phone number';
    }
    return null;
  }
}
