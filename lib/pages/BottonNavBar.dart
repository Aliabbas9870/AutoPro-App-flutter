import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';






class BottomNavPage extends StatelessWidget {
  const BottomNavPage({Key? key, this.menuScreenContext})
      : super(key: key);
  final BuildContext? menuScreenContext;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text("Complete Your Work"),
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({
    Key? key,
    this.menuScreenContext,
    this.hideStatus = false,
    this.onScreenHideButtonPressed,
  }) : super(key: key);

  final BuildContext? menuScreenContext;
  final bool hideStatus;
  final VoidCallback? onScreenHideButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: hideStatus ? Colors.grey : Colors.white,
      child: Center(
        child: ElevatedButton(
          onPressed: onScreenHideButtonPressed,
          child: Text("Toggle Status"),
        ),
      ),
    );
  }
}

class MainScreen2 extends StatelessWidget {
  const MainScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(
        child: Text("Screen 2"),
      ),
    );
  }
}

class MainScreen3 extends StatelessWidget {
  const MainScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: Center(
        child: Text("Screen 3"),
      ),
    );
  }
}
