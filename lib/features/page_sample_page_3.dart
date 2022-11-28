import 'package:flutter/material.dart';

class SamplePage3 extends StatelessWidget {
  const SamplePage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 3'),
      ),
      body: const Center(
        child: Text('Page 3'),
      ),
    );
  }
}
