import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tinder_cloan/modelView/homeScrProvider.dart';
import 'package:tinder_cloan/view/homeScreen/BottomPanel.dart';
import 'package:tinder_cloan/view/homeScreen/CenterTinderCard.dart';
import 'package:tinder_cloan/view/homeScreen/HomeScrTopBar.dart';

class HomeSrc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeScrProvider(),
      builder: (context, child) => Scaffold(
        body: SafeArea(child: DesignScr(),),
      ),
    );
  }
}

class DesignScr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        HomeScrTopBar(),
        SizedBox(height: 20,),
        TinderCard(),
        SizedBox(height: 20,),
        BottomPanel()
      ],
    );
  }
}
