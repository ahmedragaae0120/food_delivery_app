import 'package:flutter/material.dart';

class FoodCardWidget extends StatelessWidget {
  final String name;
  final String subTitle;
  final String price;
  final double rating;
  final String imageUrl;

  const FoodCardWidget({
    super.key,
    required this.name,
    required this.subTitle,
    required this.price,
    required this.rating,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        // الجزء الخلفي (الكارت الأبيض)
        Container(
          margin: const EdgeInsets.only(top: 50),
          padding: const EdgeInsets.fromLTRB(20, 70, 20, 25),
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimary,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.05),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // الاسم (Title)
              Text(
                name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  height: 1.2,
                ),
              ),
              const SizedBox(height: 8),
              // العنوان الفرعي (Subtitle)
              Text(
                subTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 10),
              // التقييم (Rating)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.star, color: Colors.orange, size: 18),
                  const SizedBox(width: 4),
                  Text(
                    rating.toString(),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              // السعر (Price)
              Text(
                price,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: theme
                      .colorScheme
                      .primary, // اللون البرتقالي الموجود في الصورة
                ),
              ),
            ],
          ),
        ),
        // الصورة الدائرية (Image)
        Positioned(
          top: 0,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: CircleAvatar(
              radius: 55,
              backgroundColor: Colors.grey[200],
              backgroundImage: AssetImage(imageUrl),
            ),
          ),
        ),
      ],
    );
  }
}
