import 'package:cosc/screen/category/components/Language.dart';
import 'package:cosc/screen/main/enum/language_type.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: const [Padding(
          padding: EdgeInsets.fromLTRB(0, 20, 20, 0),
          child: Text("완료", style: TextStyle(color: Colors.white, fontSize: 20)),
        )],),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 8.0),
                child: Text("관심 언어를 설정해 주세요!", style: TextStyle(color: Colors.white, fontSize: 26),),
              ),
              GridView.count(
                crossAxisSpacing: 30,
                mainAxisSpacing: 30,
                shrinkWrap: true,
                crossAxisCount: 2,
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 1.6),
                children: [
                  Language(code: LanguageType.python.code, isSelected: true,),
                  Language(code: LanguageType.java.code),
                  Language(code: LanguageType.javascript.code),
                  Language(code: LanguageType.typescript.code),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
