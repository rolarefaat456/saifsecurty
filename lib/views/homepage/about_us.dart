// views/homepage/about_us.dart

import 'package:flutter/material.dart';
import 'package:saifalmirgab/components/assetsimage.dart';
import 'package:saifalmirgab/components/colorsapp.dart';
import 'package:saifalmirgab/components/data.dart';
import 'package:saifalmirgab/components/widgets/text_data.dart';

// ignore: must_be_immutable
class AboutUs extends StatelessWidget {
  AboutUs({
    super.key,
  });

  DataApp dataApp = DataApp();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            AppColors.BabyBlack,
            const Color.fromARGB(255, 152, 128, 43).withOpacity(0.6),
          ],
          begin: Alignment.center,
          end: Alignment.bottomLeft,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            
            child: TextData(title: dataApp.data['distingushed']['en'], text: dataApp.data['leading']['en'], titleColor: AppColors.Yellow, textColor: AppColors.White,),
          ),
          // MediaQuery.sizeOf(context).width<900? SizedBox() : Spacer(),
          Stack(
            children: [
              Positioned(
                top: MediaQuery.sizeOf(context).width < 600
                          ? MediaQuery.sizeOf(context).height / 15
                          : MediaQuery.sizeOf(context).width < 900
                          ? MediaQuery.sizeOf(context).height / 20
                          : MediaQuery.sizeOf(context).height / 35,
                // 70,
                right: MediaQuery.sizeOf(context).width < 600
                          ? MediaQuery.sizeOf(context).width / 8
                          : MediaQuery.sizeOf(context).width < 900
                          ? MediaQuery.sizeOf(context).width / 20
                          : MediaQuery.sizeOf(context).width / 15,
                // 90,
                child: Transform.rotate(
                  angle: 8,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 8,
                        color: AppColors.Yellow,
                      ),
                    ),
                    width: MediaQuery.sizeOf(context).width < 600
                        ? MediaQuery.sizeOf(context).width / 2.5
                        : MediaQuery.sizeOf(context).width < 900
                        ? MediaQuery.sizeOf(context).width / 3
                        : MediaQuery.sizeOf(context).width / 5,
                    height: MediaQuery.sizeOf(context).width < 600
                        ? MediaQuery.sizeOf(context).height / 2.6
                        : MediaQuery.sizeOf(context).width < 900
                        ? MediaQuery.sizeOf(context).height / 2.2
                        : MediaQuery.sizeOf(context).height / 1.8,
                  ),
                ),
              ),
              Image.asset(
                Assets.assetsImagesFelr2ysya,
                width: MediaQuery.sizeOf(context).width < 600
                        ? MediaQuery.sizeOf(context).width / 2.5
                        : MediaQuery.sizeOf(context).width < 900
                        ? MediaQuery.sizeOf(context).width / 3
                        : MediaQuery.sizeOf(context).width / 4,
                        height: MediaQuery.sizeOf(context).width < 600
                        ? MediaQuery.sizeOf(context).height / 2.5
                        : MediaQuery.sizeOf(context).width < 900
                        ? MediaQuery.sizeOf(context).height / 2.2
                        : MediaQuery.sizeOf(context).height / 2.1,
                        fit: BoxFit.cover,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
