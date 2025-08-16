// views/homepage/saif_al_mirgab.dart
import 'package:flutter/material.dart';
import 'package:saifalmirgab/components/app_text.dart';
import 'package:saifalmirgab/components/assetsimage.dart';
import 'package:saifalmirgab/components/colorsapp.dart';
import 'package:saifalmirgab/components/data.dart';

// ignore: must_be_immutable
class SaifAlMirgab extends StatelessWidget {
   SaifAlMirgab({
    super.key,
  });

  DataApp data = new DataApp();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.assetsImagesSoragma3ya),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 250,
          width: double.infinity,
          color: AppColors.Red.withOpacity(0.2),
        ),
        Positioned(
          top: MediaQuery.sizeOf(context).height / 6,
          left: MediaQuery.sizeOf(context).width < 600
                ? MediaQuery.sizeOf(context).width / 2.5
                : MediaQuery.sizeOf(context).width < 900
                ? MediaQuery.sizeOf(context).width / 3
                : MediaQuery.sizeOf(context).width / 15,
          child:Container(
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
                : MediaQuery.sizeOf(context).width / 15,
            height: MediaQuery.sizeOf(context).width < 600
                ? MediaQuery.sizeOf(context).height / 2.6
                : MediaQuery.sizeOf(context).width < 900
                ? MediaQuery.sizeOf(context).height / 2.2
                : MediaQuery.sizeOf(context).height / 1.5,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  '${data.data['title']['en']}',
                  style: AppTextStyles.style80w800(context),
                ),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 70,
                  maxWidth: 70,
                ),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: CircleAvatar(
                    backgroundColor: AppColors.White,
                    backgroundImage: AssetImage(
                      Assets.assetsImagesSaiflogo,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
