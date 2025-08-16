// views/homepage/services_data.dart

import 'package:flutter/material.dart';
import 'package:saifalmirgab/components/app_text.dart';
import 'package:saifalmirgab/components/models/services_data_model.dart';

// ignore: must_be_immutable
class ServicesData extends StatelessWidget {
  ServicesData({super.key});

  ServicesDataModel servicesDataModel = ServicesDataModel();

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 10,
        mainAxisExtent: MediaQuery.sizeOf(context).width < 600
            ? MediaQuery.sizeOf(context).width / 2.6
            : MediaQuery.sizeOf(context).width < 900
            ? MediaQuery.sizeOf(context).width / 2.7
            : MediaQuery.sizeOf(context).width / 2.8,
      ),
      itemCount: servicesDataModel.servicesdata.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 768/400,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  image: DecorationImage( image: AssetImage(
                    servicesDataModel.servicesdata[index]['image']
                  ),
                  fit: BoxFit.cover,
                   )
                  )
                ),
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    servicesDataModel.servicesdata[index]['text'],
                    style: AppTextStyles.style48w800(context),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
