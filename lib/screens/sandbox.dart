import 'package:flutter/material.dart';

class SandBox extends StatefulWidget {
  const SandBox({Key? key}) : super(key: key);

  @override
  State<SandBox> createState() => _SandBoxState();
}

class _SandBoxState extends State<SandBox> {
  double width = 200;
  double margin = 0;
  double opacity = 1;
  Color color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 900),
        color: color,
        width: width,
        margin: EdgeInsets.all(margin),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: TextButton(
                onPressed: () => setState(() {margin = 40;}),
                child: const Text(
                  "animate margin",
                  style: TextStyle(color: Colors.white,),
                ),
              ),
            ),
            const SizedBox(height: 10.0,),
            Center(
              child: TextButton(
                onPressed: () => setState(() {width = 500;}),
                child: const Text(
                  "animate width",
                  style: TextStyle(color: Colors.white,),
                ),
              ),
            ),

            const SizedBox(height: 10.0,),
            Center(
              child: TextButton(
                onPressed: () => setState(() {color = Colors.blueGrey;}),
                child: const Text(
                  "animate color",
                  style: TextStyle(color: Colors.white,),
                ),
              ),
            ),

            const SizedBox(height: 10.0,),
            Center(
              child: TextButton(
                onPressed: () => setState(() {opacity = 0;}),
                child: const Text(
                  "animate opacity",
                  style: TextStyle(color: Colors.white,),
                ),
              ),
            ),

            const SizedBox(height: 10.0,),
            AnimatedOpacity(
              opacity: opacity,
              duration: const Duration(milliseconds: 900),
              child: const Text(
                "hide me",
                style: TextStyle(color: Colors.white,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
