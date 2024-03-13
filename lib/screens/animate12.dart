import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Animate12 extends StatefulWidget {
  const Animate12({Key? key}) : super(key: key);

  @override
  State<Animate12> createState() => _Animate12State();
}

class _Animate12State extends State<Animate12> {
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
                height: 200,
                width: 200,
                duration: Duration(seconds: 1),
                curve: Curves.linear,
                decoration: BoxDecoration(
                    color : Colors.amber,
                    borderRadius: BorderRadius.all(
                        Radius.circular(isBigger ? 100.r : 2.r)
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