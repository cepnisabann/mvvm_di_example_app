import 'package:empty_di_page/pages/viewmodels/examplepage_vm.dart';
import 'package:flutter/material.dart';

import '../base/base_widget.dart';

class ExamplePage extends StatefulWidget {
  const ExamplePage({Key? key}) : super(key: key);

  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

class _ExamplePageState extends BaseState<ExamplePageViewModel, ExamplePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: kToolbarHeight,
          backgroundColor: Colors.orange.shade800,
          title: const Center(child: Text("Favoriler")),
          actions: [
            const Icon(Icons.refresh),
          ],
        ),
        body: Container(
          color: Colors.red,
        ));
  }
}
