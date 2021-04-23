import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tinder_cloan/modelView/boardingPovider.dart';
import 'package:tinder_cloan/view/Widgets/HeaderInfoText.dart';

class PhotoInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.topLeft,
          width: MediaQuery.of(context).size.width,
          child: Consumer<BoardingProvider>(
            builder: (context, value, child) => IconButton(
              onPressed: () {
                value.topProgressBar = 0.16;
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
        Text(
          'Add Photos',
          style: TextStyle(
            color: Colors.black,
            fontSize: 34,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Hold, drag, and drop to reorder',
          style: TextStyle(
            color: Colors.grey.shade400,
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 1.6),
            ),
            itemBuilder: (BuildContext context, int index) {
              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DottedBorder(
                      radius: Radius.circular(10),
                      dashPattern: [6, 3],
                      color: Colors.grey.shade300,
                      strokeWidth: 2,
                      padding: const EdgeInsets.all(1),
                      borderType: BorderType.RRect,
                      child: Container(
                        padding: EdgeInsets.all(4),
                        width: double.infinity,
                        height: 180,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Text(
                          "${index + 1}",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              shadows: [
                                Shadow(
                                  color: Colors.grey.shade400,
                                  blurRadius: 5,
                                )
                              ]),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.redAccent.shade200,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 30,
                      ),
                      height: 30,
                      width: 30,
                    ),
                  ),
                ],
              );
            },
            itemCount: 9,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
          ),
        )
      ],
    );
  }
}
