import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Animate7 extends StatefulWidget {
  const Animate7({Key? key}) : super(key: key);

  @override
  State<Animate7> createState() => _Animate7State();
}

class _Animate7State extends State<Animate7> {
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
                    color : isBigger ? Colors.white : Colors.black,
                    borderRadius: BorderRadius.all(
                        Radius.circular(20.r)
                    ),
                  border: Border.all(
                    width: 1,
                    color : Colors.black
                  )
                ),
                child: const FlutterLogo(),
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