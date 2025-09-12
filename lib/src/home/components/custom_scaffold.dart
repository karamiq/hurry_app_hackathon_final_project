import 'package:app/src/home/components/circuler_container.dart';
import 'package:app/utils/extensions.dart';
import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold(
      {super.key,
      this.body,
      this.mainAxisAlignment = MainAxisAlignment.start,
      this.crossAxisAlignment = CrossAxisAlignment.start,
      this.padding,
      this.safeArea = true,
      this.resizeToAvoidBottomInset = true,
      this.floatingActionButton,
      this.floatingActionButtonLocation,
      this.appBar});
  final EdgeInsetsGeometry? padding;
  final Widget? body;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final bool safeArea;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final bool resizeToAvoidBottomInset;
  final AppBar? appBar;

  @override
  Widget build(BuildContext context) {
    final h = context.height;
    final w = context.width;
    final primary = context.colorScheme.primary.withOpacity(.2);
    return Scaffold(
      appBar: appBar,
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      body: SafeArea(
        top: safeArea,
        bottom: safeArea,
        left: safeArea,
        right: safeArea,
        child: Stack(
          alignment: Alignment.center,
          children: [
            //  Triangle at center left, shifted 200 pixels to the right
            Positioned(
              top: MediaQuery.of(context).size.height / 1,
              left: 200,
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.amber,
                ),
              ),
            ),
            Positioned(
                top: h * .1,
                right: h * -.1,
                child: CirculerContainer(
                  color: primary,
                )),
            Positioned(
                top: h * .2,
                right: h * .3,
                child: CirculerContainer(
                  color: primary,
                )),
            Positioned(
                bottom: 80,
                child: CirculerContainer(
                  color: primary,
                )),
            Positioned(
                height: h * .8,
                right: -80,
                child: CirculerContainer(
                  color: primary,
                )),
            Positioned(
              left: 300,
              top: MediaQuery.of(context).size.height / 2 - 100,
              child: Stack(
                children: [
                  // AnimatedRotatingPoint(
                  //   radius: 150,
                  // ),
                  // AnimatedRotatingPoint(
                  //   radius: 150,
                  //   startAngle: 90,
                  // ),
                  // AnimatedRotatingPoint(
                  //   startAngle: 180,
                  //   radius: 150,
                  // ),
                ],
              ),
            ),
            // Positioned.fill(
            //   child: BackdropFilter(
            //     filter: ImageFilter.blur(sigmaX: 80.0, sigmaY: 80.0),
            //     child: Container(
            //       color: Colors.black.withOpacity(0.1),
            //     ),
            //   ),
            // ),
            Padding(
              padding: padding ?? EdgeInsets.zero,
              child: body,
            ),
          ],
        ),
      ),
    );
  }
}
