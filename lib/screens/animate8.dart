import 'dart:math';
import 'package:flutter/material.dart';

class Animate8 extends StatefulWidget {
  const Animate8({Key? key}) : super(key: key);

  @override
  State<Animate8> createState() => _Animate8State();
}

class _Animate8State extends State<Animate8>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    animation = Tween<double>(begin: 0, end: 4 * pi).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.linear,
        reverseCurve: Curves.linear,
      ),
    )
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {});
    animationController.forward();
    animationController.repeat(reverse: true);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Transform.rotate(
          angle: animation.value,
          child: Container(
            width: 20 * animation.value,
            height: 20 * animation.value,
            color : Colors.blue
          ),
        ),
      ),
    );
  }
}

Widget getCard({required Color clr , required double w , required double h}){
  return Container(
    width: w,
    height: h,
    decoration:  BoxDecoration(
        color : clr,
        borderRadius: const BorderRadius.all(
            Radius.circular(60)
        )
    ),
  );
}