import 'package:flutter/material.dart';

class SocialButtonWidget extends StatelessWidget {
  final IconData icon;

  final String label;

  final Color color;

  final Color textColor;

  final Color iconColor;

  final VoidCallback onPressed;
  const SocialButtonWidget({
    super.key,
    required this.icon,
    required this.label,
    required this.color,
    required this.textColor,
    required this.iconColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,

      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,

        padding: const EdgeInsets.symmetric(vertical: 12),

        decoration: BoxDecoration(
          color: color,

          borderRadius: BorderRadius.circular(12),

          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),

              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],

          border: color == Colors.white
              ? Border.all(color: Colors.grey.shade300)
              : null,
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Icon(icon, color: iconColor, size: 28),

            const SizedBox(width: 8),

            Text(
              label,

              style: TextStyle(
                color: textColor,

                fontWeight: FontWeight.bold,

                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
