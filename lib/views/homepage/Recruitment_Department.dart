// views/homepage/Recruitment_Department.dart

import 'package:flutter/material.dart';
import 'package:saifalmirgab/components/data.dart';
import 'package:saifalmirgab/components/widgets/text_data.dart';

class RecruitmentDepartment extends StatelessWidget {
  RecruitmentDepartment({
    super.key,
  });
  DataApp dataApp = DataApp();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: TextData(
                title: dataApp.data['Recruitment']['en'],
                text:
                    dataApp.data['our_Recruitment']['en']
              ),
            ),
          ),
          Expanded(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/basslycar.jpg', fit: BoxFit.contain,),
            ),
          ),
        ],
      ),
    );
  }
}
