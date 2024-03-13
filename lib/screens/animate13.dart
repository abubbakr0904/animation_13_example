import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Animate13 extends StatefulWidget {
  const Animate13({Key? key}) : super(key: key);

  @override
  State<Animate13> createState() => _Animate13State();
}

class _Animate13State extends State<Animate13>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;
  late Animation<double> heightAnimation;
  late Animation<double> widthAnimation;
  late Animation<double> textSizeAnimation;
  late Animation<Color?> colorAnimation;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    animation = Tween<double>(begin: 0 , end: 100).animate(animationController);
    widthAnimation =
        Tween<double>(begin: 120, end: 200).animate(animationController);
    textSizeAnimation =
        Tween<double>(begin: 14, end: 50).animate(animationController);
    heightAnimation =
        Tween<double>(begin: 50, end: 200).animate(animationController);
    colorAnimation = ColorTween(begin: Colors.red, end: Colors.green)
        .animate(animationController);

    animationController.addListener(() {
      setState(() {});
    });
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double pw = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 80.w,
              height: 80.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60.r),
                color : colorAnimation.value
              ),
            ),
            SizedBox(height: 30.h,),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.w),
                  width: double.infinity,
                  height: 40.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color : Colors.blue.withOpacity(0.5)
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.w),
                  width: pw/100 * animation.value,
                  height: 40.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color : Colors.blue
                  ),
                )
              ],
            ),
            SizedBox(height: 30.h,),
            Text(animation.value.toString().substring(0 , 3) , style: TextStyle(
              color : Colors.black,
              fontSize: 20.sp
            ),),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.grey
              ),
            onPressed: (){
                animationController.forward();
                setState(() {

                });
            }, child: Text("Start" , style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp
            ),))
          ],
        ),
      ),
    );
  }
}