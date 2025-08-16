// views/homepage/Call_Us.dart

import 'package:flutter/material.dart';
import 'package:saifalmirgab/components/assets.dart';
import 'package:saifalmirgab/components/colorsapp.dart';
import 'package:saifalmirgab/components/data.dart';
import 'package:saifalmirgab/components/widgets/text_data.dart';

// ignore: must_be_immutable
class CallUs extends StatelessWidget {
  CallUs({super.key});
  DataApp dataApp = DataApp();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 20,
          child: Stack(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Assets.assetsImagesSoragma3ya),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: 300,
                width: double.infinity,
                color: AppColors.BabyBlack.withOpacity(0.5),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextData(
                        title: dataApp.data['call']['en'],
                        text:
                            dataApp.data['call_us_text']['en'],
                        titleColor: AppColors.White,
                        textColor: AppColors.White,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconCallUs(image: 'assets/images/Phone.png'),
                        IconCallUs(image: 'assets/images/At.png'),
                        IconCallUs(image: 'assets/images/MapPin.png'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            color: AppColors.Yellow,
            width: double.infinity,
            height: 300,
          ),
        ),
      ],
    );
  }
}

class IconCallUs extends StatelessWidget {
  const IconCallUs({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(color: AppColors.White, shape: BoxShape.circle),
      padding: EdgeInsets.all(10),
      child: Image.asset(image),
    );
  }
}
