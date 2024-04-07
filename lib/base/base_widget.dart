import 'package:flutter/material.dart';
import '../di/locator.dart';

abstract class BaseState<T extends ChangeNotifier, P extends StatefulWidget>
    extends State<P> {
  T viewModel = getIt<T>();
  @override
  void initState() {
    viewModel.addListener(() {
      setState(() {});
    });
    super.initState();
  }
}
