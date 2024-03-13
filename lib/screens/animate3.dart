import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Animate3 extends StatefulWidget {
  const Animate3({Key? key}) : super(key: key);

  @override
  State<Animate3> createState() => _Animate3State();
}

class _Animate3State extends State<Animate3> {
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
                duration: const Duration(seconds: 3),
                curve: Curves.linear,
                decoration: BoxDecoration(
                    color : isBigger ? Colors.white : Colors.amber,
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