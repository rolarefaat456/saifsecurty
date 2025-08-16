// views/homepage/homepage.dart
import 'package:flutter/material.dart';
import 'package:saifalmirgab/components/app_text.dart';
import 'package:saifalmirgab/components/colorsapp.dart';
import 'package:saifalmirgab/components/data.dart';
import 'package:saifalmirgab/views/homepage/Call_Us.dart';
import 'package:saifalmirgab/views/homepage/Certificate_Section.dart';
import 'package:saifalmirgab/views/homepage/Recruitment_Department.dart';
import 'package:saifalmirgab/views/homepage/about_us.dart';
import 'package:saifalmirgab/views/homepage/our_page.dart';
import 'package:saifalmirgab/views/homepage/privateComapany.dart';
import 'package:saifalmirgab/views/homepage/saif_al_mirgab.dart';
import 'package:saifalmirgab/views/homepage/services_data.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  DataApp data = new DataApp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      backgroundColor: AppColors.White,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SaifAlMirgab()),
          SliverToBoxAdapter(child: PrivateSecurtyComapany()),
          SliverToBoxAdapter(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  data.data['services']['en'],
                  style: AppTextStyles.style132w800(context),
                ),
              ),
            ),
          ),
          ServicesData(),
          SliverToBoxAdapter(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  data.data['ABOUT']['en'],
                  style: AppTextStyles.style132w800(
                    context,
                  ).copyWith(color: AppColors.BabyBlack),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(child: AboutUs()),
          SliverToBoxAdapter(child: RecruitmentDepartment()),
          SliverToBoxAdapter(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  data.data['certificates']['en'],
                  style: AppTextStyles.style80w800(
                    context,
                  ).copyWith(color: AppColors.Yellow),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(child: CertificateSection()),
          SliverToBoxAdapter(child: CertificateWithAwardSection()),
          SliverToBoxAdapter(child: CallUs()),
          SliverToBoxAdapter(child: OurPages()),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(10),
              // height: 50,
              width: double.infinity,
              color: AppColors.Yellow,
              child: Center(
                child: Text(
                  data.data['homefinish']['en'] ,
                  style: AppTextStyles.style24w500(
                    context,
                  ).copyWith(color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
