// views/homepage/Certificate_Section.dart

import 'package:flutter/material.dart';
import 'package:saifalmirgab/components/colorsapp.dart';
import 'package:saifalmirgab/components/models/certificate_award.dart';
import 'package:saifalmirgab/components/models/certificates_data_model.dart';

// ignore: must_be_immutable
class CertificateSection extends StatelessWidget {
  CertificateSection({super.key});

  CertificatesDataModel certificatesDataModel = CertificatesDataModel();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      color: AppColors.Burgundy,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: certificatesDataModel.Certificate.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Image.asset(
              certificatesDataModel.Certificate[index]['certificate'],
            ),
          );
        },
      ),
    );
  }
}

// ignore: must_be_immutable
class CertificateWithAwardSection extends StatelessWidget {
  CertificateWithAwardSection({super.key});

  CertificateAward certificateAward = CertificateAward();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      color: AppColors.White,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: certificateAward.Awards.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Align(
  alignment: Alignment.center,
  child: Image.asset(
    certificateAward.Awards[index]['Award'],
  ),
),
          );
        },
      ),
    );
  }
}
