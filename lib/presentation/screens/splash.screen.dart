import 'package:flutter/material.dart';
import 'package:the_3_black_bro/presentation/widget/base-screen.widget.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() {
    return _SplashState();
  }
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFF292829),
      body: BaseScreen(
          children: [
            Container(
              width: deviceWidth,
              height: deviceHeight * 0.5,
              padding: const EdgeInsets.all(100),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1000),
                  color: Colors.white,
                ),
                child: const Text(
                  'Logo',
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 26
                  ),
                ),
              ),
            ),
            const Text(
                'MINHA VEZ',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 32,
                ),
            )
          ]
      ),
    );
  }

}