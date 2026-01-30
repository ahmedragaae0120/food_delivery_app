import 'package:flutter/material.dart';

class UserDetailInputWidget extends StatelessWidget {
  final String label;
  final String initialValue;
  final bool isPassword;
  final bool showLock;

  const UserDetailInputWidget({
    super.key,
    required this.label,
    required this.initialValue,
    this.isPassword = false,
    this.showLock = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextFormField(
      initialValue: initialValue,
      obscureText: isPassword,
      enabled: false,

      decoration: InputDecoration(
        labelText: label,
        suffixIcon: showLock ? const Icon(Icons.lock) : null,
        hoverColor: theme.colorScheme.primary,
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(color: theme.colorScheme.primary, width: 2),
        ),
      ),
    );
  }
}
