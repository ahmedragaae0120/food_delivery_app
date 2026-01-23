import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';

enum PaymentMethod { cashOnDelivery, creditCard }

class PaymentMethodWidget extends StatelessWidget {
  final String title;
  final PaymentMethod groupValue; // القيمة المختارة حالياً في الأب
  final Function(PaymentMethod?) onChanged;
  final PaymentMethod paymentMethod;
  const PaymentMethodWidget({
    super.key,
    required this.title,
    required this.groupValue,
    required this.onChanged,
    required this.paymentMethod,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    // التحقق هل هذا العنصر هو المختار
    final bool isSelected = paymentMethod == groupValue;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: paymentMethod == PaymentMethod.cashOnDelivery
            ? theme.colorScheme.primary
            : theme.colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          if (isSelected)
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.2),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
        ],
      ),
      child: InkWell(
        onTap: () => onChanged(paymentMethod),
        borderRadius: BorderRadius.circular(24),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Row(
            children: [
              paymentMethod == PaymentMethod.cashOnDelivery
                  ? CircleAvatar(
                      backgroundColor: theme.colorScheme.onPrimary,
                      child: Text(
                        '\$',
                        style: TextStyle(
                          fontSize: 24,
                          color: theme.colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  : Image.asset(AppAssets.imagesVisapng),

              const SizedBox(width: 16),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: paymentMethod == PaymentMethod.cashOnDelivery
                          ? theme.colorScheme.onPrimary
                          : theme.colorScheme.primary,
                    ),
                  ),
                  if (paymentMethod == PaymentMethod.creditCard)
                    Text('**** **** **** 1234'),
                ],
              ),
              Spacer(),
              Radio<PaymentMethod>(
                value: paymentMethod,
                groupValue: groupValue,
                onChanged: onChanged,
                activeColor: paymentMethod == PaymentMethod.cashOnDelivery
                    ? theme.colorScheme.onPrimary
                    : theme.colorScheme.primary, // لون الراديو عند الاختيار
              ),
            ],
          ),
        ),
      ),
    );
  }
}
