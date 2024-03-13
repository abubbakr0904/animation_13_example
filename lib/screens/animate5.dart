import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Animate5 extends StatefulWidget {
  const Animate5({super.key});

  @override
  State<Animate5> createState() => _Animate5State();
}

class _Animate5State extends State<Animate5> {
  Alignment alignment = Alignment.center;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fourth Screen'),
      ),
      body: Column(
        children: [
          // SizedBox(height: 150.h),
          SizedBox(
            height: 300.h,
            width: double.infinity,
            child: AnimatedAlign(
              alignment: alignment,
              duration: const Duration(seconds: 3),
              curve: Curves.linear,
              child: Container(
                height: 150.h,
                width: 150.w,
                color: Colors.red,
              ),
            ),
          ),
          SizedBox(height: 100.h),
          Column(
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    alignment = Alignment.topCenter;
                  });
                },
                icon: Icon(Icons.arrow_upward),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        alignment = Alignment.centerLeft;
                      });
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                  SizedBox(width: 50.w,),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        alignment = Alignment.centerRight;
                      });
                    },
                    icon: Icon(Icons.arrow_forward),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    alignment = Alignment.bottomCenter;
                  });
                },
                icon: Icon(Icons.arrow_downward_sharp),
              ),
            ],
          )
        ],
      ),
    );
  }
}
