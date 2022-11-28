import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class SamplePage2 extends StatelessWidget {
  const SamplePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body: Center(
        child: InkWell(
            onTap: () {
              context.router.pushNamed('SamplePage3');
            },
            child: Text('Page 2')),
      ),
    );
  }
}
