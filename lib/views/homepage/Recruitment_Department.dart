// views/homepage/Recruitment_Department.dart

import 'package:flutter/material.dart';
import 'package:saifalmirgab/components/widgets/text_data.dart';

class RecruitmentDepartment extends StatelessWidget {
  const RecruitmentDepartment({
    super.key,
  });

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
                title: 'Recruitment Department',
                text:
                    'At Saif Al Mirgab, our Recruitment Department plays a vital role in maintaining the high standards that define our security services. We believe that exceptional security starts with exceptional people. That’s why our recruitment process is designed to identify individuals who demonstrate professionalism, discipline, integrity, and a strong sense of responsibility.Our team follows a rigorous selection process that includes background checks, physical and psychological assessments, and thorough interviews to ensure each candidate meets our operational and ethical standards. We prioritize both experience and potential, welcoming skilled professionals as well as motivated newcomers who are ready to undergo intensive training.Beyond hiring, the Recruitment Department works closely with our Training and Operations teams to ensure every new guard is equipped with the knowledge, tools, and mindset to perform effectively in the field.',
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
