import 'package:flutter/material.dart';

class Heart extends StatefulWidget {
  const Heart({super.key});

  @override
  _HeartState createState() => _HeartState();
}

class _HeartState extends State<Heart> with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<Color>? _animationColor;
  Animation<double>? _animationSize;
  // Animation<Curve>? _animationCurve;
  bool isFav = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500),);

    // _animationCurve = CurvedAnimation(parent: _controller!, curve: Curves.slowMiddle) as Animation<Curve>;

    _animationColor = ColorTween(begin: Colors.grey[400], end: Colors.red)
        .animate(_controller!) as Animation<Color>? ;

    _animationSize = TweenSequence(<TweenSequenceItem<double>>[
      TweenSequenceItem<double>(
        tween: Tween<double>(begin: 30, end: 50),
        weight: 50,
      ),
      TweenSequenceItem<double>(
        tween: Tween<double>(begin: 50, end: 30),
        weight: 50,
      ),
    ]) .animate(_controller!);

    _controller?.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        isFav = true;
      } else {
        isFav = false;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller!,
      builder: (BuildContext context, Widget? child) {
        return IconButton(
          icon: Icon(
            Icons.favorite,
            color: _animationColor?.value,
            size: _animationSize?.value,
          ),
          onPressed: () {
            // if (!_controller!.isCompleted) {
            //   _controller?.forward();
            // } else {
            //   _controller?.reverse();
            // }
            if (!isFav) {
              _controller?.forward();
            } else {
              _controller?.reverse();
            }
          },
        );
      },
    );
  }
}
