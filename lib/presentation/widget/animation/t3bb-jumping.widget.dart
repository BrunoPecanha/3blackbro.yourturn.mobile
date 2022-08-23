import 'package:flutter/material.dart';
import 'package:the_3_black_bro/presentation/widget/animation/t3bb-dot.widget.dart';

class Jumping extends StatefulWidget {
  final int numberOfDots;

  const Jumping({Key? key, this.numberOfDots = 3}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _StateJumping();
  }
}

class _StateJumping extends State<Jumping> with TickerProviderStateMixin {
  late List<AnimationController> _animationControllers;
  final List<Animation<double>> _animations = [];

  int animationDuration = 200;

  void _initAnimation() {
    _animationControllers = List.generate(
      widget.numberOfDots,
          (index) {
        return AnimationController(
            vsync: this, duration: Duration(milliseconds: animationDuration));
      },
    ).toList();

    for (int i = 0; i < widget.numberOfDots; i++) {
      _animations.add(
          Tween<double>(begin: 0, end: -30).animate(_animationControllers[i]));
    }

    for (int i = 0; i < widget.numberOfDots; i++) {
      _animationControllers[i].addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _animationControllers[i].reverse();
          if (i != widget.numberOfDots - 1) {
            _animationControllers[i + 1].forward();
          }
        }

        if (i == widget.numberOfDots - 1 &&
            status == AnimationStatus.dismissed) {
          _animationControllers[0].forward();
        }
      });
    }
    _animationControllers.first.forward();
  }

  @override
  void initState() {
    super.initState();
    _initAnimation();
  }

  @override
  void dispose() {
    for (var controller in _animationControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x00FFFFFF),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(widget.numberOfDots, (index) {
            return AnimatedBuilder(
              animation: _animationControllers[index],
              builder: (context, child) {
                return Container(
                  padding: const EdgeInsets.all(2.5),
                  child: Transform.translate(
                    offset: Offset(0, _animations[index].value),
                    child: Dot(),
                  ),
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }

}