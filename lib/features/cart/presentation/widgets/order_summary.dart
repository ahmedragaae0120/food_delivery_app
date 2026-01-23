import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderSummary extends StatelessWidget {
  final double subtotal;
  final double taxes;
  final double deliveryFees;
  final double total;

  const OrderSummary({
    super.key,
    required this.subtotal,
    required this.taxes,
    required this.deliveryFees,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Order summary',
          style: TextStyle(
            color: const Color(0xFF3C2F2F),
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
        Row(
          children: [
            Text(
              'Order',
              style: TextStyle(
                color: const Color(0xFF7D7D7D),
                fontSize: 18,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
              ),
            ),
            Spacer(),
            Text(
              '\$$subtotal',
              style: GoogleFonts.roboto(
                color: const Color(0xFF7D7D7D),
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              'Taxes',
              style: GoogleFonts.roboto(
                color: const Color(0xFF7D7D7D),
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            Spacer(),
            Text(
              '\$$taxes',
              style: GoogleFonts.roboto(
                color: const Color(0xFF7D7D7D),
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              'Delivery fees',
              style: GoogleFonts.roboto(
                color: const Color(0xFF7D7D7D),
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            Spacer(),
            Text(
              '\$$deliveryFees',
              style: GoogleFonts.roboto(
                color: const Color(0xFF7D7D7D),
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        const Divider(thickness: 1, color: Color(0xFFE0E0E0)),
        Row(
          children: [
            Text(
              'Total:',
              style: GoogleFonts.roboto(
                color: const Color(0xFF3C2F2F),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Spacer(),
            Text(
              '\$$total',
              style: GoogleFonts.reemKufiInk(
                color: const Color(0xFF3C2F2F),
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              'Estimated delivery time:',
              style: GoogleFonts.roboto(
                color: const Color(0xFF3C2F2F),
                fontWeight: FontWeight.w600,
              ),
            ),
            Spacer(),
            Text(
              '15 - 30 mins',
              style: GoogleFonts.roboto(
                color: const Color(0xFF3C2F2F),
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
