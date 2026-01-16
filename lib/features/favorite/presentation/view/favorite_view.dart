import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/food_card_widget.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          childAspectRatio: 1 / 2,
          mainAxisExtent: 300,
        ),
        itemBuilder: (context, index) {
          return FoodCardWidget(
            name: 'Favorite Item ${index + 1}',
            subTitle: 'SubTitle ${index + 1}',
            price: '\$${(index + 1) * 5}.99',
            rating: 4.5,
            imageUrl: AppAssets.imagesCircleLogo,
            isFavoriteWidget: true,
          );
        },
        itemCount: 10,
      ),
    );
  }
}
