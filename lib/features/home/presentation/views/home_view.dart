import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/config.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/categories_tab_bar_widget.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/food_card_builder.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/search_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    AppConfig().init(context);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          spacing: 16,
          children: [
            Flexible(
              child: Text(
                'Delicious\nFood for You ',
                textAlign: TextAlign.left,
                style: GoogleFonts.baloo2(
                  fontSize: 34,
                  fontWeight: FontWeight.w800,

                  height: 1.05,
                ),
              ),
            ),
            SearchWidget(),
            CategoriesTabBarWidget(),
            const FoodCardBuilder(),
          ],
        ),
      ),
    );
  }
}
