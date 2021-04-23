import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tinder_cloan/modelView/boardingPovider.dart';
import 'package:tinder_cloan/view/Widgets/HeaderInfoText.dart';

class GenderInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<BoardingProvider>(
      builder: (context, value, child) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            alignment: Alignment.topLeft,
            width: MediaQuery.of(context).size.width,
            child: Consumer<BoardingProvider>(
              builder: (context, value, child) => IconButton(
                onPressed: () {
                  value.topProgressBar = 0.48;
                  value.pageController.previousPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                },
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.blueGrey.shade100,
                    size: 36,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 50,
            ),
            child: HeaderInfoText(
              headerText: "I am a",
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 50,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    value.gender = 'WOMAN';
                  },
                  child: value.gender == 'WOMAN'
                      ? enableBtn(context, 'WOMAN')
                      : disableBtn(context, 'WOMAN'),
                ),
                InkWell(
                  onTap: () {
                    value.gender = 'MAN';
                  },
                  child: value.gender == 'MAN'
                      ? enableBtn(context, 'MAN')
                      : disableBtn(context, 'MAN'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              child: Align(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: value.showGender,
                      onChanged: (bool tm) {
                        value.showGender = tm;
                      },
                    ),
                    Text(
                      "Show my gender on my profile",
                      style: TextStyle(color: Colors.grey.shade400),
                    )
                  ],
                ),
                alignment: Alignment.bottomCenter,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget disableBtn(BuildContext context, String text) {
    return Container(
      height: 57.0,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300, width: 3),
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      margin: EdgeInsets.all(4),
      child: Text(
        "$text",
        style: TextStyle(color: Colors.grey.shade400, fontSize: 18),
      ),
    );
  }

  Widget enableBtn(BuildContext context, String text) {
    return Container(
      alignment: Alignment.bottomCenter,
      width: MediaQuery.of(context).size.width,
      height: 57.0,
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(29.0),
        gradient: LinearGradient(
          begin: Alignment(-1.0, 0.0),
          end: Alignment(1.0, 0.0),
          colors: [const Color(0xfffd297c), const Color(0xffff7257)],
          stops: [0.0, 1.0],
        ),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          '$text',
          style: TextStyle(
            fontFamily: 'Segoe UI',
            fontSize: 20,
            color: const Color(0xffffffff),
          ),
        ),
      ),
    );
  }
}
