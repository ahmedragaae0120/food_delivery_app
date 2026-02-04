import 'dart:developer';

import 'package:flutter/material.dart';

class FoodCartItem extends StatefulWidget {
  final String imageUrl;
  final String foodName;
  final String foodType;
  const FoodCartItem({
    super.key,
    required this.imageUrl,
    required this.foodName,
    required this.foodType,
  });

  @override
  State<FoodCartItem> createState() => _FoodCartItemState();
}

class _FoodCartItemState extends State<FoodCartItem> {
  int _quantity = 1;
  @override
  Widget build(BuildContext context) {
    // Define the theme color based on the image
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: (0.08)),
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          // Left Section: Image and Labels
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  widget.imageUrl, // Replace with your asset image
                  height: 60,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 8),
                Text(
                  widget.foodName,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  widget.foodType,
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ],
            ),
          ),

          // Right Section: Controls
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Quantity Selector
              Row(
                children: [
                  _buildIconButton(Icons.remove, theme.colorScheme.primary, () {
                    setState(() {
                      if (_quantity > 1) _quantity--;
                    });
                    log(_quantity.toString());
                  }),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      _quantity.toString(),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  _buildIconButton(Icons.add, theme.colorScheme.primary, () {
                    setState(() {
                      _quantity++;
                    });
                    log(_quantity.toString());
                  }),
                ],
              ),
              const SizedBox(height: 16),
              // Remove Button
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: theme.colorScheme.primary,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(120, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 0,
                ),
                child: const Text('Remove'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildIconButton(IconData icon, Color color, VoidCallback? onPressed) {
    {
      return InkWell(
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: Colors.white, size: 20),
        ),
      );
    }
  }
}
