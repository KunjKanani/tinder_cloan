import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tinder_cloan/modelView/boardingPovider.dart';
import 'package:tinder_cloan/view/Widgets/HeaderInfoText.dart';

class SchoolInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topLeft,
              width: MediaQuery.of(context).size.width,
              child: Consumer<BoardingProvider>(
                builder: (context, value, child) => IconButton(
                  onPressed: () {
                    value.topProgressBar = 0.64;
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
                headerText: "My school \nis",
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 50,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "School Name",
                  isDense: true,
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 22,
                  ),
                ),
                cursorHeight: 30,
                cursorColor: Colors.deepOrange,
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                "This is how it will appear in Tinder",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
