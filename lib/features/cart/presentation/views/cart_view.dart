import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/routes/routes.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/features/cart/presentation/widgets/food_cart_item_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        spacing: 10,
        mainAxisSize: MainAxisSize.min,
        children: [
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return FoodCartItem(
                foodName: 'Food Item ${index + 1}',
                foodType: index % 2 == 0 ? 'Veggie Burger' : 'Chicken Burger',
                imageUrl: AppAssets.imagesLogo,
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 16),
            itemCount: 10,
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total',
                      style: GoogleFonts.poppins(
                        color: const Color(0xFF3C2F2F),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '\$125',
                      style: TextStyle(
                        color: const Color(0xFF3C2F2F),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.checkout);
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: FittedBox(
                    child: Text(
                      'Checkout',
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
