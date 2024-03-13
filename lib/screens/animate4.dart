import 'dart:math';
import 'package:flutter/material.dart';

class Animate4 extends StatefulWidget {
  const Animate4({Key? key}) : super(key: key);

  @override
  State<Animate4> createState() => _Animate4State();
}

class _Animate4State extends State<Animate4>
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
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Transform.rotate(
          angle: animation.value,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    getCard(clr: Colors.red, w: 10 * animation.value, h: 10 * animation.value),
                    getCard(clr: Colors.green, w: 10 * animation.value, h: 10 * animation.value)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    getCard(clr: Colors.yellow, w: 10 * animation.value, h: 10 * animation.value),
                    getCard(clr: Colors.blue, w: 10 * animation.value, h:10 * animation.value)
                  ],
                ),
              ],
            ),
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