import 'package:flutter/material.dart';

class QuestionContent extends StatelessWidget {
  const QuestionContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /**
     * html element 로 변경해야 하며, (https://pub.dev/packages/html_editor_enhanced) 라이브러리 참조
     */
    return Column(
      children: [
        const Text(
            "SLF(Shortest Job First) 스케쥴링에서 작업 도착시간과 CPU 사용시간은 다음 표와 같다. JOB 3 의 종료 시간은 10 이다.",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20
            )
        ),
        // Padding(
        //   padding: const EdgeInsets.symmetric(vertical: 30),
        //   child: Image.asset("assets/image/question_sample_table.png", width: double.maxFinite),
        // ),
      ],
    );
  }
}
