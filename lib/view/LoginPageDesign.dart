import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tinder_cloan/view/pageRoute/FadeRoute.dart';

import 'MobileVerify/MobileNoVerify.dart';

class LoginPageDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/Mode8.jpg',
          fit: BoxFit.fill,
        ),
        LoginView()
      ],
    );
  }
}

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 160,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/TinderWhiteLogo.png',
                width: 70,
                height: 70,
              ),
              Image.asset(
                'assets/TinderText.png',
                width: 90,
                height: 90,
              ),
            ],
          ),
          SizedBox(
            height: 70,
          ),
          Text(
            'By tapping Log In, you agree agree with our \n Terms of Services and Privacy Policy',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
            onPressed: () {},
            color: Colors.blueAccent,
            child: Text(
              "LOG IN WITH FACEBOOK",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            padding: EdgeInsets.symmetric(vertical: 22, horizontal: 20),
            minWidth: MediaQuery.of(context).size.width - 40,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).push(
                FadeRoute(page: MobileNoVerify())
              );
            },
            color: Colors.transparent,
            child: Text(
              "LOG IN WITH PHONE NUMBER",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            padding: EdgeInsets.symmetric(vertical: 22, horizontal: 20),
            minWidth: MediaQuery.of(context).size.width - 40,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: BorderSide(
                color: Colors.white,
                width: 3,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Trouble Logging in?',
            style: TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "We don't post anything from facebook",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,),
              ),
              Icon(
                Icons.keyboard_arrow_down_sharp,
                color: Colors.white,
                size: 14,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
