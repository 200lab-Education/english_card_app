import 'package:f2_flutter_ecommerce_app/values/app_colors.dart';
import 'package:f2_flutter_ecommerce_app/values/app_styles.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const AppButton({Key? key, required this.label, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, offset: Offset(3, 6), blurRadius: 6)
            ],
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Text(
          label,
          style: AppStyles.h5.copyWith(color: AppColors.textColor),
        ),
      ),
    );
  }
}
