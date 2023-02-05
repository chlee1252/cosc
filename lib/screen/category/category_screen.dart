import 'package:cosc/screen/category/components/Language.dart';
import 'package:cosc/widget/cosc_appbar.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Text("완료", style: TextStyle(color: Colors.white, )),
        )],),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Text("관심 언어를 설정해 주세요!", style: TextStyle(color: Colors.white),),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2, children: [
                Language(code: "py"),
                Language(code: "java"),
                Language(code: "js"),
                Language(code: "ts"),
              ],)
            ],
          ),
        ),
      ),
    );
  }
}
