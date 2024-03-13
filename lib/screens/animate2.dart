import 'package:flutter/material.dart';

class Animate2 extends StatefulWidget {
  const Animate2({Key? key}) : super(key: key);

  @override
  State<Animate2> createState() => _Animate2State();
}

class _Animate2State extends State<Animate2>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> heightAnimation;
  late Animation<double> widthAnimation;
  late Animation<double> textSizeAnimation;
  late Animation<Color?> colorAnimation;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    widthAnimation =
        Tween<double>(begin: 120, end: 200).animate(animationController);
    textSizeAnimation =
        Tween<double>(begin: 14, end: 50).animate(animationController);
    heightAnimation =
        Tween<double>(begin: 50, end: 200).animate(animationController);
    colorAnimation = ColorTween(begin: Colors.blue, end: Colors.red)
        .animate(animationController);

    animationController.addListener(() {
      setState(() {});
    });

    animationController.repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Twin"),
      ),
      body: Center(
        child: Container(
          height: heightAnimation.value,
          width: 200,
          child: Center(
            child: Text(
              "Hello World",
              style: TextStyle(
                color: colorAnimation.value,
                fontSize: textSizeAnimation.value,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}