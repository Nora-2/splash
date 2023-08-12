import 'package:big_cart/viewmodels/spalshmodel.dart';
import 'package:flutter/material.dart';
import '../../constants/asset_constants.dart';

class Background extends StatelessWidget {
   Background({
    required this.currentindex,
    Key? key,
  }) : super(key: key);
  int currentindex;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage( tabs[currentindex].backimage),
            fit: BoxFit.fill),
      ),
    );
  }
}
