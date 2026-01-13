import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/routes/routes.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/config.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppConfig().init(context);
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: const Color(0xffFF4B3A),

      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),

                    Image.asset(AppAssets.imagesCircleLogo),

                    const SizedBox(height: 24),

                    Flexible(
                      child: Text(
                        'Food for\nEveryone',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.baloo2(
                          color: Colors.white,
                          fontSize: 64,
                          fontWeight: FontWeight.w800,

                          height: 1.05,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Image full width
            Expanded(
              child: Image.asset(
                AppAssets.imagesOnboarding,
                width: AppConfig.screenWidth,
                fit: BoxFit.cover,
              ),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.auth);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.colorScheme.onPrimary,
                foregroundColor: theme.colorScheme.primary,
              ),
              child: const Text(
                'Get started',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 48),
          ],
        ),
      ),
    );
  }
}
