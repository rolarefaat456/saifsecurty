// views/homepage/privateComapany.dart

import 'package:flutter/material.dart';
import 'package:saifalmirgab/components/app_text.dart';
import 'package:saifalmirgab/components/assetsimage.dart';
import 'package:saifalmirgab/components/colorsapp.dart';
import 'package:saifalmirgab/components/data.dart';
import 'package:saifalmirgab/components/widgets/text_data.dart';

class PrivateSecurtyComapany extends StatefulWidget  {
  PrivateSecurtyComapany({super.key});

  @override
  State<PrivateSecurtyComapany> createState() => _PrivateSecurtyComapanyState();
}

class _PrivateSecurtyComapanyState extends State<PrivateSecurtyComapany> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  DataApp data = new DataApp();
      @override
  // ignore: unused_element
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat();
  }
  @override
  // ignore: unused_element
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context)  {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width < 600
                  ? MediaQuery.sizeOf(context).width / 2
                  : MediaQuery.sizeOf(context).width < 900
                  ? MediaQuery.sizeOf(context).width / 1.5
                  : MediaQuery.sizeOf(context).width / 2,
              height: MediaQuery.sizeOf(context).width < 600
                  ? MediaQuery.sizeOf(context).height / 2.5
                  : MediaQuery.sizeOf(context).width < 1200
                  ? MediaQuery.sizeOf(context).height / 2
                  : MediaQuery.sizeOf(context).height / 2.5,
              child: TextData(title: data.data['private']['en'], text: data.data['privatetext']['en'])
            ),
            Container(
              width: double.infinity,
              // color: AppColors.BabyBlack,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    AppColors.Orange.withOpacity(0.8),
                    AppColors.BabyBlack,
                  ],
                  center: Alignment.bottomLeft,
                  radius: 0.6,
                ),
              ),
              child: Container(
                width: MediaQuery.sizeOf(context).width < 600
                    ? MediaQuery.sizeOf(context).width / 2
                    : MediaQuery.sizeOf(context).width < 900
                    ? MediaQuery.sizeOf(context).width / 1.5
                    : MediaQuery.sizeOf(context).width / 2,
                height: MediaQuery.sizeOf(context).width < 600
                    ? MediaQuery.sizeOf(context).height / 2.5
                    : MediaQuery.sizeOf(context).width < 1200
                    ? MediaQuery.sizeOf(context).height / 2
                    : MediaQuery.sizeOf(context).height / 2.5,
                child: TextData(title: data.data['distingushed']['en'], text: data.data['distingushedtext']['en'],
                titleColor: AppColors.White,textColor: AppColors.White,
                ),
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: 170,
            height: 290,
            margin: EdgeInsets.only(
              right: MediaQuery.sizeOf(context).width < 600 ? 20 : 65,
              top: 90,
            ),

            color: AppColors.Yellow,
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            height: MediaQuery.sizeOf(context).width< 600 ?
            315 : 290,
            width: MediaQuery.sizeOf(context).width< 600 ?
          400 :
            500,
            margin: EdgeInsets.only(top: 90),
            child: Image.asset(Assets.assetsImagesSaif),
          ),
        ),
        Positioned(
          top: 315,
          left: 1185,
          child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 130, maxWidth: 127),
            child: AspectRatio(
              aspectRatio: 213 / 216,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.White.withOpacity(0.5),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    '2012',
                    style: AppTextStyles.style32w500(context),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 
          // MediaQuery.sizeOf(context).width < 600
          //     ? MediaQuery.sizeOf(context).width / 50
          //     : MediaQuery.sizeOf(context).width < 900
          //     ? MediaQuery.sizeOf(context).width / 20
          //     : MediaQuery.sizeOf(context).width / 4.8,
          280,
          left: 
          // MediaQuery.sizeOf(context).width < 600
          //     ? MediaQuery.sizeOf(context).width / 99
          //     : MediaQuery.sizeOf(context).width < 900
          //     ? MediaQuery.sizeOf(context).width / 20
          //     : MediaQuery.sizeOf(context).width / 1.45,
          
           1150,
          child: RotationTransition(
            turns: _controller,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 200, maxWidth: 197),
              child: AspectRatio(
                aspectRatio: 213 / 216,
                child: Image.asset(
                  'assets/images/we - here - for - you - since - 2012 -.png',
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
