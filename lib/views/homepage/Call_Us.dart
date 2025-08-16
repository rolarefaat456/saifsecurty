// views/homepage/Call_Us.dart

import 'package:flutter/material.dart';
import 'package:saifalmirgab/components/assets.dart';
import 'package:saifalmirgab/components/colorsapp.dart';
import 'package:saifalmirgab/components/widgets/text_data.dart';

class CallUs extends StatelessWidget {
  const CallUs({super.key});

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
                        title: 'CALL US',
                        text:
                            'If you are looking for a reliable security partner who puts your safety first, we are here to\n meet your expectations. At Saif Al Mirqab, we dont just provide services—we offer peace of\n mind. Our team is ready to listen to your needs and provide appropriate solutions with\n professionalism and care. Dont hesitate, contact us and letis begin our journey together\n toward a safer environment.',
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
