// views/viewpage/view_page.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saifalmirgab/components/app_text.dart';
import 'package:saifalmirgab/components/assetsimage.dart';
import 'package:saifalmirgab/components/colorsapp.dart';
import 'package:saifalmirgab/components/widgets/appbar_data.dart';
import 'package:saifalmirgab/provider/control.dart';
import 'package:saifalmirgab/views/homepage/homepage.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({super.key});

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  final List<Widget> pages = [
    Homepage(),

Center(child: Text("Call Us Page")),
    Center(child: Text("Services Page")),
    Center(child: Text("Recruitment Department Page")),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<Control>(
      builder: (context, value, child) {
        return Scaffold(
          backgroundColor: AppColors.White,
          appBar: AppBar(
            toolbarHeight: 50,
            elevation: 0,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.BabyBlack,
                    AppColors.Yellow.withOpacity(0.4),
                    AppColors.BabyBlack,
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [0.2, 0.3, 0.8],
                ),
              ),
            ),

            centerTitle: true,
            backgroundColor: AppColors.BabyBlack,
            leading: ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 50, maxWidth: 50),
              child: AspectRatio(
                aspectRatio: 44.5 / 44,
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(Assets.assetsImagesSaiflogo),
                ),
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppbarData(text: 'HOME', index: 0),
                AppbarData(text: 'CALL US', index: 1),
                AppbarData(text: 'SERVICES', index: 2),
                AppbarData(
                  text: MediaQuery.sizeOf(context).width < 600
                      ? 'Recruitment\nDepartment'
                      : 'Recruitment Department',
                  index: 3,
                ),
              ],
            ),
            actions: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.BabyGrey,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text('EN', style: AppTextStyles.style12w500(context)),
                ),
              ),
            ],
          ),
          body: IndexedStack(
            index: value.CurrentIndex, 
            children: [
              Homepage(),
Center(child: Text("Call Us Page")),
    Center(child: Text("Services Page")),
    Center(child: Text("Recruitment Department Page")),
          ]),
        );
      },
    );
  }
}
