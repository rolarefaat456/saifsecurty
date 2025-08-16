// components/widgets/appbar_data.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saifalmirgab/components/app_text.dart';
import 'package:saifalmirgab/components/colorsapp.dart';
import 'package:saifalmirgab/provider/control.dart';

class AppbarData extends StatelessWidget {
  const AppbarData({super.key, required this.text, required this.index});
  final String text;
  final int index;

  @override
  Widget build(BuildContext context) {
    
    return Consumer<Control>(
      builder: (context, value, child) {
        bool isSelected = value.CurrentIndex == index;
        return InkWell(
          onTap: () => value.selected(index),
          child: Container(
            height: 50,
            child: Column(
              children: [
                Container(width: 50, height:isSelected ? 2 : 0, color: AppColors.Red),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Text(
                    text,
                    style: AppTextStyles.style16w500(
                      context,
                    ).copyWith(color: AppColors.White),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
