import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/features/profile/presentation/widgets/user_datails_input_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: theme.colorScheme.primary, width: 2),
              image: DecorationImage(
                image: AssetImage(AppAssets.imagesSonic),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Text('John Doe', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 8),
        Text(
          'Mobile Developer',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        UserDetailInputWidget(label: "Name", initialValue: "John Doe"),
      ],
    );
  }
}
