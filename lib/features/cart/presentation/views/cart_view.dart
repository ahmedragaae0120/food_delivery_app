import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/features/cart/presentation/widgets/food_cart_item_widget.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) {
              return FoodCartItem(
                foodName: 'Food Item ${index + 1}',
                foodType: index % 2 == 0 ? 'Veggie Burger' : 'Chicken Burger',
                imageUrl: AppAssets.imagesLogo,
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 16),
            itemCount: 3,
          ),
        ),
      ],
    );
  }
}
