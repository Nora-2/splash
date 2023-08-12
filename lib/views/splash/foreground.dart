import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../constants/asset_constants.dart';
import '../../shared/styles.dart';
import '../../viewmodels/spalshmodel.dart';

class Foreground extends StatelessWidget {
  Foreground(
      {Key? key, required this.currentindex, required this.pageController})
      : super(key: key);
  int currentindex;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 36),
        Padding(
          padding: const EdgeInsets.symmetric( horizontal: 8),
          child: Row(
           
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Visibility(
                visible:!tabs[currentindex].visable ,
                child: TextButton(
                    onPressed: () {
                      pageController.previousPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.linear,
                      );
                    },
                    child: Text(
                      'Back',
                      style: paragraph4.copyWith(fontSize: 18),
                    )),
              ),
              TextButton(
                  onPressed: () {
                    
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.linear,
                    );
                  },
                  child: Text(
                    'Next',
                    style:
                        paragraph4.copyWith(color: appGreenColor, fontSize: 18),
                  )),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Text(
          tabs[currentindex].titel1,
          style: heading4,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 1),
        Visibility(
          visible: tabs[currentindex].visable,
          child: Image.asset(
            tabs[currentindex].image!,
            width: 127,
            height: 50,
          ),
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 47),
          child: Text(
            tabs[currentindex].tiltel2,
            style: paragraph1,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 400),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (int index = 0; index < tabs.length; index++)
              _DotIndicator(isSelected: index == currentindex),
          ],
        ),
      ],
    );
  }
}

class _DotIndicator extends StatelessWidget {
  final bool isSelected;

  const _DotIndicator({Key? key, required this.isSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 6.0),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: 6.0,
        width: 6.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? appGreenColor : appGreyColor,
        ),
      ),
    );
  }
}
