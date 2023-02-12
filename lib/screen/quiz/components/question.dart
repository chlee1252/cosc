import 'package:cosc/constants.dart';
import 'package:cosc/screen/quiz/components/tag_list.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.99,
      height: MediaQuery.of(context).size.height * 0.75,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: secondThemeColor),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 40),
              child: Text("Question2",style: TextStyle(color: Colors.white, fontSize: 24),),
            ),
            Column(
              children:  [
                /**
                 * Text 와 table image 영역은 하나의 컴포넌트에 포함
                 * html element 여야 하며, (https://pub.dev/packages/html_editor_enhanced) 라이브러리 참조
                 */
                const Text(
                    "SLF(Shortest Job First) 스케쥴링에서 작업 도착시간과 CPU 사용시간은 다음 표와 같다. JOB 3 의 종료 시간은 10 이다.",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    )
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Image.asset("assets/image/question_sample_table.png", width: double.maxFinite),
                ),
                const TagList()
              ],
            )
          ],
        ),
      )
    );
  }
}
