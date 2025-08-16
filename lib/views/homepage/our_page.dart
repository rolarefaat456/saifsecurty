// views/homepage/our_page.dart

import 'package:flutter/material.dart';
import 'package:saifalmirgab/components/app_text.dart';
import 'package:saifalmirgab/components/assets.dart';
import 'package:saifalmirgab/components/colorsapp.dart';
import 'package:saifalmirgab/components/widgets/text_data.dart';

class OurPages extends StatelessWidget {
  const OurPages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      color: Colors.black,
      child: Center(
        child: Row(
          children: [
            Expanded(child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: TextData(title: 'Our Pages', text: 'HOME - ABOUT US - CALL US - SERVICES\nRecruitment Department', textColor: AppColors.White, titleColor: AppColors.White,))),
            Spacer(),
            Expanded(child: Image.asset(Assets.assetsImagesSaiflogo)),
            Spacer(),
            Expanded(
              child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'Saif Al Mirgab For Security',
                            style: AppTextStyles.style32w800(
                              context,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          '"Saif Al-Mirqab... protection that begins\n with trust and continues with\n commitment."',
                          style: AppTextStyles.style24w500(
                            context,
                          ).copyWith(color: AppColors.White),
                        ),
                      ),
                    ],
                  ),
            )
          ],
        ),
      ),
    );
  }
}
