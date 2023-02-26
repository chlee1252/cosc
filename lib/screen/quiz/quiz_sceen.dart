import 'package:cosc/screen/quiz/components/question.dart';
import 'package:cosc/widget/cosc_appbar.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:card_swiper/card_swiper.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({Key? key}) : super(key: key);
  static const QuestionList = [
    Question(),
    Question(),
    Question(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CoscAppBar(),
        body: Swiper(
            itemBuilder: (BuildContext context,int index){
              return QuestionList[index];
            },
            itemCount: 3,
            layout: SwiperLayout.TINDER,
            itemWidth: double.infinity,
            itemHeight: double.infinity,
            loop: false,
            curve: Curves.easeInOutBack
          )
    );
  }

  // child: Swiper(
  // itemBuilder: (BuildContext context,int index){
  // return Question();
  // },
  // itemCount: 1,
  // ),
}
