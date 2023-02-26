import 'package:cosc/screen/quiz/components/question.dart';
import 'package:get/get.dart';

class QuizController extends GetxController {

  List<Question> QuestionList = const [
    Question(
        title: 'Question1',
        taglist: ['프론트엔드','javascript'],
        type: 'MULTI',
        choices: [
          "가독성이 아주 뛰어남",
          "함수 안의 함수",
          "전화를 해 달라는 함수"
        ]
    ),
    Question(
        title: 'Question2',
        taglist: ['typescript'],
        type: 'MULTI',
        choices: [
          "가독성이 아주 뛰어남",
          "함수 안의 함수",
          "콜백 천국이라는 단어와 관련 있음",
          "전화를 해 달라는 함수"
        ]
    ),
    Question(
        title: 'Question3',
        taglist: ['백엔드'],
        type: 'OX'
    ),
  ];
}