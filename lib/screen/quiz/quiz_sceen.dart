import 'package:cosc/service/quiz/QuizController.dart';
import 'package:cosc/widget/cosc_appbar.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:get/get.dart';

class QuizScreen extends StatelessWidget {
  QuizScreen({Key? key}) : super(key: key);

  final QuizController _quizController = Get.put(QuizController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CoscAppBar(),
        body: Swiper(
            itemBuilder: (BuildContext context,int index){
              return _quizController.QuestionList[index];
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
}
