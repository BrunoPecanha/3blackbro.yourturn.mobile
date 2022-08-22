import 'package:flutter/material.dart';
import 'package:indexed/indexed.dart';

class BaseScreen extends StatelessWidget {
  final List<Widget> children;

  const BaseScreen({ Key? key, required this.children }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: <Widget>[
        Indexer(
          children: [
            SafeArea(
                child:
                Indexed(
                    index: 1,
                    child: SizedBox(
                      height: deviceHeight,
                      width: deviceWidth,
                      child: SingleChildScrollView(
                        child: Column(
                          children: children,
                        ),
                      ),
                    )
                )
            )
          ],
        )
      ],
    );
  }

}