import 'dart:math';

import 'package:big_cart/shared/styles.dart';
import 'package:big_cart/views/splash/background.dart';
import 'package:flutter/material.dart';

// import 'package:flutter_hooks/flutter_hooks.dart';

import '../../viewmodels/spalshmodel.dart';
import 'foreground.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  int _currentIndex = 0;

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          
          Flexible(
            child: PageView.builder(
             physics: BouncingScrollPhysics(),
              controller: _pageController,
              itemCount: tabs.length,
              itemBuilder: (BuildContext context, int index) {
                OnboardingModel tab = tabs[index];

                return Stack(
                  alignment: Alignment.center,
                  children: [
                    
                    Background(
                      currentindex: _currentIndex,
                    ),
                    Foreground(
                      currentindex: _currentIndex,
                      pageController: _pageController,
                    ),
                    
                  ],
                );
              },
              onPageChanged: (value) {
                _currentIndex = value;
                setState(() {});
              },
            ),
          ),
          
                  
        ],
      ),
    );
  }
}

