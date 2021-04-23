import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tinder_cloan/modelView/boardingPovider.dart';
import 'package:tinder_cloan/view/Widgets/HeaderInfoText.dart';

class BirthDateInfo extends StatefulWidget {
  @override
  _BirthDateInfoState createState() => _BirthDateInfoState();
}

class _BirthDateInfoState extends State<BirthDateInfo> {
  DateTime date;

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
                    value.topProgressBar = 0.32;
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
                headerText: "My \nbirthday is",
              ),
            ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) => AlertDialog(
                    content: SizedBox(
                      height: 200,
                      child: CupertinoDatePicker(
                        mode: CupertinoDatePickerMode.date,
                        onDateTimeChanged: (DateTime value) {
                          setState(() {
                            date = value;
                          });
                        },
                      ),
                    ),
                    actions: [
                      MaterialButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'Cencle',
                          style: TextStyle(color: Colors.deepOrange),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'Done',
                          style: TextStyle(color: Colors.deepOrange),
                        ),
                      ),
                    ],
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                child: Text(
                  date == null ? 'M M / D D / Y Y Y Y':'${date.month} / ${date.day} / ${date.year}',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                "Your age will be public",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
