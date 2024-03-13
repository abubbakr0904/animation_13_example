import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Animate1 extends StatefulWidget {
  const Animate1({Key? key}) : super(key: key);

  @override
  State<Animate1> createState() => _Animate1State();
}

class _Animate1State extends State<Animate1> {
  bool isBigger = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: AnimatedContainer(
                height: 100,
                width: isBigger ? 300 : 100,
                duration: const Duration(seconds: 3),
                curve: Curves.bounceIn,
                decoration: BoxDecoration(
                  color : Colors.blue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.r)
                  )
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  isBigger = !isBigger;
                  setState(() {});
                },
                child: Text("Press me"))
          ],
        ));
  }
}