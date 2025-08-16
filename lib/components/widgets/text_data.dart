// components/widgets/text_data.dart

import 'package:flutter/material.dart';
import 'package:saifalmirgab/components/app_text.dart';
import 'package:saifalmirgab/components/colorsapp.dart';

class TextData extends StatelessWidget {
  const TextData({
    super.key, required this.title, required this.text, this.titleColor = AppColors.BabyBlack,
    this.textColor = AppColors.BabyBlack,
  });

  final String title, text;
  final Color titleColor, textColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              title,
              style: AppTextStyles.style56w800(
                context,
              ).copyWith(color: titleColor),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            text,
            style: AppTextStyles.style24w500(
              context,
            ).copyWith(color: textColor),
          ),
        ),
      ],
    );
  }
}
