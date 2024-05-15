import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodie_app/utils/constant/app_image.dart';

import '../../../../../../utils/theme/app_colors.dart';

class Swipeable extends StatefulWidget {
  const Swipeable({super.key});

  @override
  State<StatefulWidget> createState() => _SwipeableState();
}

class _SwipeableState extends State<Swipeable> {
  int currentIndex = 0;
  late PageController _controller;
  late Timer _timer;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    timer();
    super.initState();
  }

  void timer() {
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (currentIndex < contents.length - 1) {
        _controller.nextPage(
          duration: const Duration(seconds: 2),
          curve: Curves.ease,
        );
      } else {
        _controller.jumpToPage(0);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _timer.cancel();
    super.dispose();
  }

  List<String> contents = [
    Assets.svgSaudi,
    Assets.svgSaudi,
    Assets.svgSaudi,
    Assets.svgSaudi,
    Assets.svgSaudi,
    Assets.svgSaudi,
    Assets.svgSaudi,
    Assets.svgSaudi,
    Assets.svgSaudi,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.sizeOf(context).width / 0.5,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView.builder(
            controller: _controller,
            itemCount: contents.length,
            onPageChanged: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return SizedBox(
                width: MediaQuery.sizeOf(context).width / 3,
                child: Image.asset(
                  contents[index],
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => buildDot(index, context),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.white,
      ),
    );
  }
}
