import 'package:flutter/material.dart';

import 'package:flutter_localization/flutter_localization.dart';

const List<MapLocale> LOCALES=[
  MapLocale('en', LocalData.EN),
   MapLocale('ja', LocalData.JA),
    MapLocale('km', LocalData.KM),

];

mixin LocalData {
  static const String title = 'title';
  static const String body = 'body';
  static const Map<String, dynamic> EN = {
    title: 'Localization',
    body: 'welcome to this localization application',
  };

  static const Map<String, dynamic> KM = {
    title: 'ការធ្វើមូលដ្ឋានីយកម្ម',
    body:
        'ខ្ញុំគឺជាអ្នកទទួលបានមូលដ្ឋានីយកម្មពិតប្រាកដថា អ្នកមានចំណេះដឹងនិងសុវត្ថិភាពក្នុងការធ្វើការមួយដ៏ប្រសើរ។ '
  };

  static const Map<String, dynamic> JA = {title: 'ローカリゼーション', body: ''};
}
