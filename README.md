# COSC
- 카드형식으로 준비하는 개발자 면접준비 어플리케이션

## Flutter
```data
[✓] Flutter (Channel stable, 3.0.0, on macOS 12.6 21G115 darwin-x64, locale
    en-US)
    • Flutter version 3.0.0 at /Users/changhwanlee/dev/flutter
    • Upstream repository https://github.com/flutter/flutter.git
    • Framework revision ee4e09cce0 (7 months ago), 2022-05-09 16:45:18 -0700
    • Engine revision d1b9a6938a
    • Dart version 2.17.0
    • DevTools version 2.12.2

[✓] Android toolchain - develop for Android devices (Android SDK version 30.0.3)
    • Android SDK at /Users/changhwanlee/Library/Android/sdk
    • Platform android-33, build-tools 30.0.3
    • Java binary at: /Applications/Android
      Studio.app/Contents/jre/Contents/Home/bin/java
    • Java version OpenJDK Runtime Environment (build
      11.0.13+0-b1751.21-8125866)
    • All Android licenses accepted.

[✓] Xcode - develop for iOS and macOS (Xcode 14.2)
    • Xcode at /Applications/Xcode.app/Contents/Developer
    • CocoaPods version 1.11.3
```

## Plugins
- ### State Management
  - flutter_bloc: ^8.1.1
  - bloc: ^8.1.0

- ### Configuration
  - flutter_config: ^2.0.0 -> For Env File
  - flutter_svg: ^1.5.5 -> SVG icon

- ### ETC
  - equatable: ^2.0.5 -> 객체 비교

- ### UI
  - flutter_swiper: 1.1.6 -> 카드 스와이퍼
  - table_calendar: 3.0.8 -> 달력
  - syncfusion_flutter_calendar: ^20.3.61 -> 달력
  - NOTE: 달력이 2개인데 비교해보고 하나 지우기
---

## Code Convention
- 2 depth 이상이면 method로 따로 최대한 빼기
- 위젯이 광범위하게 재사용 될것 같으면 -> widget directiory에 추가하기
- 그게 아니면 screen 디랙토리내에 component 디랙토리 만들어서 추가하기
- 파일이름은 snake_case로 진행 -> Flutter에서 추천하는 방식
  ### bloc
  - screen 별로 디랙토리 나누기
  ### service
  - screen 별로 디랙토리 나누기

# Project tree 예시

```data
├── config
├── screen
│   ├── main
│   ├── mypage
│       ├── bloc
│       ├── service
│       ├── components
│       └── mypage_screen.dart
└── widgets
    ├── textbox
    │   └── circular_textbox.dart
    └── buttons

# Branch 전략
- Git Flow (?) -> main, develop, feature, hotfix, release