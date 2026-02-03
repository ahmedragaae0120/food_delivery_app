import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/features/cart/presentation/widgets/payment_method_widget.dart';
import 'package:food_delivery_app/features/profile/presentation/widgets/user_datails_input_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          spacing: 8,
          children: [
            Center(
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: theme.colorScheme.primary,
                    width: 2,
                  ),
                  image: DecorationImage(
                    image: AssetImage(AppAssets.imagesSonic),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            UserDetailInputWidget(label: "Name", initialValue: "John Doe"),
            UserDetailInputWidget(
              label: "Email",
              initialValue: "xRj9Z@example.com",
            ),

            UserDetailInputWidget(
              label: "Delivery address",
              initialValue: "123 Main St, Anytown, USA",
            ),
            UserDetailInputWidget(
              label: "Password",
              initialValue: "password123",
              isPassword: true,
              showLock: true,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Divider(color: theme.colorScheme.primary, thickness: 1),
            ),
            PaymentMethodWidget(
              title: "Payment Method",
              groupValue: PaymentMethod.creditCard,
              onChanged: (_) {},
              paymentMethod: PaymentMethod.creditCard,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              spacing: 8,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 8,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Edit profile"),
                        Icon(
                          Icons.edit_note_rounded,
                          color: theme.colorScheme.onPrimary,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      side: BorderSide(
                        color: theme.colorScheme.primary,
                        width: 2,
                      ),
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 8,
                      mainAxisSize: MainAxisSize.min,

                      children: [
                        Text(
                          "Logout",
                          style: TextStyle(color: theme.colorScheme.primary),
                        ),
                        Icon(
                          Icons.logout_rounded,
                          color: theme.colorScheme.primary,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
