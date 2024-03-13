import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Animate10 extends StatefulWidget {
  const Animate10({Key? key}) : super(key: key);

  @override
  State<Animate10> createState() => _Animate10State();
}

class _Animate10State extends State<Animate10> {
  bool isBigger = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  isBigger = !isBigger;
                  setState(() {

                  });
                });
              },
              child: AnimatedContainer(
                height: 200,
                width: 200,
                margin: EdgeInsets.only(
                  left:  isBigger ? 150 : 10,
                  top:  isBigger ? 430 : 30,
                ),
                duration: const Duration(seconds: 3),
                curve: Curves.linear,
                decoration: BoxDecoration(
                    color : isBigger ? Colors.blue : Colors.red,
                    borderRadius: BorderRadius.all(
                        Radius.circular(20.r)
                    )
                ),
              ),
            ),

          ],
        ));
  }
}