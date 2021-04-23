import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';
import 'package:tinder_cloan/modelView/homeScrProvider.dart';

class HomeScrTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeScrProvider>(
      builder: (context, value, child) => Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.person,
                color: Colors.grey.shade400,
                size: 27,
              ),
              FlutterSwitch(
                value: value.scr,
                onToggle: (tm) {
                  value.scr = tm;
                },
                inactiveColor: Colors.grey.shade300,
                inactiveToggleColor: Colors.white,
                inactiveIcon: Image.asset('assets/tinderRed.png',),
                activeToggleColor: Colors.deepOrange,
                activeColor: Colors.orange.shade400,
                height: 50,
                toggleSize: 40,
                width: 90,
                borderRadius: 50,
              ),
              Icon(
                Icons.chat,
                color: Colors.grey.shade400,
                size: 27,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
