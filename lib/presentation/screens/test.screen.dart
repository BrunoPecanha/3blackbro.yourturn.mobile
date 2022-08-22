import 'package:flutter/material.dart';
import 'package:the_3_black_bro/presentation/widget/base-screen.widget.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDFDFDF),
      body: BaseScreen(
        children: [
          Container(
            alignment: Alignment.center,
            child: const Text(
                'Test',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w900
                ),
            ),
          )
        ],
      ),
    );
  }

}