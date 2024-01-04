import 'dart:math';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class notificationS{
  Future<void> initialize() async{
    NotificationSettings settings=await     FirebaseMessaging.instance.requestPermission();

    if(settings.authorizationStatus==AuthorizationStatus.authorized){
    print('Notification initialize');
    }
  }
}


class MyWidget extends StatelessWidget {
  const MyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return const Placeholder(); }}
//////////////////////////////////////////////////////////////////////
///
///
class MyWidget1 extends StatefulWidget {
  const MyWidget1({super.key});
  @override
  State<MyWidget1> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget1> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}