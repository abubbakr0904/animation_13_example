import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Animate11 extends StatefulWidget {
  @override
  _Animate11State createState() =>
      new _Animate11State();
}

class _Animate11State extends State<Animate11>
    with TickerProviderStateMixin {

  double _size = 150;

  Widget _buildChild() {
    return Container(
      width: _size,
      height: _size,
      // color: Colors.teal,
      decoration: BoxDecoration(
      ),
      child: Text("Assalomu laykum mening ismi Abubakr" , style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 20.sp
      ),),
    );
  }

  Widget _buildAnimatedSize() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: AnimatedSize(
        duration: const Duration(seconds: 2),
        // alignment: Alignment(-0.75, -0.75),
        // curve: Curves.easeInCubic,
        child: _buildChild(),
      ),
    );
  }

  Widget _buildSizeAnimationWithAnimatedContainer() {
    return AnimatedContainer(
      width: _size,
      height: _size,
      color: Colors.teal,
      duration: const Duration(seconds: 2),
      child: _buildChild(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildAnimatedSize(),
            // _buildSizeAnimationWithAnimatedContainer(),
            ElevatedButton(
              child: Text('Change Size'),
              onPressed: () {
                setState(() {
                  _size = _size == 150 ? 250 : 150;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}