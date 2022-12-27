import 'package:cosc/screen/settings/components/setting_space_between_row.dart';
import 'package:cosc/screen/settings/components/setting_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yaml/yaml.dart';

class Version extends StatelessWidget {
  const Version({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const SettingSpaceBetweenRow(
      leftSideWidget: SettingText('버전'),
      rightSideWidget: VersionText()
    );
  }
}

class VersionText extends StatefulWidget {
  const VersionText({Key? key}) : super(key: key);

  @override
  State<VersionText> createState() => _VersionTextState();
}

class _VersionTextState extends State<VersionText> {
  String version = '';

  void setVersion(String appVersion) {
    setState(() => {
      version = appVersion
    });
  }

  _VersionTextState() {
    rootBundle.loadString("pubspec.yaml").then((yamlValue) {
      var yaml = loadYaml(yamlValue);
      setVersion(yaml['version']);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SettingText('v $version');
  }
}