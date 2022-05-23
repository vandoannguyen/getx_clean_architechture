import 'package:flutter/material.dart';
import 'package:getx_clean_architechture/routes/bindings.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  void dispose() {
    // don't forget call dispose to remove tag
    MainBinding().dispose();
    super.dispose();
  }
}
