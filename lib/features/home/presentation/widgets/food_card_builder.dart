import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/food_card_widget.dart';

class FoodCardBuilder extends StatelessWidget {
  const FoodCardBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(onPressed: () {}, child: const Text("See more")),
        ),
        LayoutBuilder(
          builder: (context, constraints) {
            double responsiveHeight = constraints.maxWidth > 600 ? 450 : 350;
            return SizedBox(
              height: responsiveHeight,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                separatorBuilder: (context, index) => const SizedBox(width: 10),
                itemBuilder: (context, index) {
                  return FoodCardWidget(
                    name: 'Cheese Burger',
                    subTitle: 'With Extra Cheese',
                    price: '\$5.99',
                    rating: 4.5,
                    imageUrl: AppAssets.imagesCircleLogo,
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
