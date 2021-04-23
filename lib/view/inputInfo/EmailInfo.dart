import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tinder_cloan/modelView/boardingPovider.dart';
import 'package:tinder_cloan/view/Widgets/HeaderInfoText.dart';

class EmailInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Consumer<BoardingProvider>(
          builder: (context, value, child) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topLeft,
                width: MediaQuery.of(context).size.width,
                child: IconButton(
                  onPressed: () {
                    value.topProgressBar = 0.16;
                    Navigator.of(context).pop();
                  },
                  icon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.cancel_outlined,
                      color: Colors.blueGrey.shade100,
                      size: 36,
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
                  headerText: "My \nemail is",
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
                    labelText: "Email Address",
                    isDense: true,
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 22,
                    ),
                  ),
                  cursorHeight: 23,
                  cursorColor: Colors.deepOrange,
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
