import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/cart/presentation/widgets/order_summary.dart';
import 'package:food_delivery_app/features/cart/presentation/widgets/payment_method_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({super.key});

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
  PaymentMethod _selectedMethod = PaymentMethod.cashOnDelivery;
  bool _saveCardDetails = false;
  @override
  Widget build(BuildContext context) {
    // final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OrderSummary(deliveryFees: 20, subtotal: 100, taxes: 5, total: 125),
            // const Spacer(),
            Text(
              'Payment methods',
              style: GoogleFonts.poppins(
                color: const Color(0xFF3C2F2F),
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            PaymentMethodWidget(
              title: "Cash on Delivery",
              groupValue: _selectedMethod,
              onChanged: (value) {
                setState(() {
                  _selectedMethod = value!;
                });
                log(value.toString());
              },
              paymentMethod: PaymentMethod.cashOnDelivery,
            ),
            PaymentMethodWidget(
              title: "Debit card",
              groupValue: _selectedMethod,
              onChanged: (value) {
                setState(() {
                  _selectedMethod = value!;
                });
                log(value.toString());
              },
              paymentMethod: PaymentMethod.creditCard,
            ),
            Row(
              children: [
                Checkbox(
                  value: _saveCardDetails,
                  onChanged: (value) {
                    setState(() {
                      _saveCardDetails = value!;
                    });
                  },
                ),
                Text(
                  'Save card details for future payments',
                  style: TextStyle(
                    color: const Color(0xFF7F7F7F),
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
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
                        'Total Price:',
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
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: FittedBox(
                      child: Text(
                        'Pay Now',
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
      ),
    );
  }
}
