import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tinder_cloan/modelView/boardingPovider.dart';
import 'package:tinder_cloan/view/Widgets/continueBtn.dart';
import 'package:tinder_cloan/view/homeScreen/HomeSrc.dart';
import 'package:tinder_cloan/view/inputInfo/BirthdateInfo.dart';
import 'package:tinder_cloan/view/inputInfo/EmailInfo.dart';
import 'package:tinder_cloan/view/inputInfo/GenderInfo.dart';
import 'package:tinder_cloan/view/inputInfo/NameInfo.dart';
import 'package:tinder_cloan/view/inputInfo/PhotoInfo.dart';
import 'package:tinder_cloan/view/inputInfo/SchoolInfo.dart';
import 'package:tinder_cloan/view/pageRoute/FadeRoute.dart';

class InputInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BoardingProvider(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            child: Consumer<BoardingProvider>(
              builder: (context, value, child) => Column(
                children: [
                  LinearProgressIndicator(
                    backgroundColor: Colors.white,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Colors.deepOrange,
                    ),
                    minHeight: 5,
                    value: value.topProgressBar,
                  ),
                  Expanded(
                    child: PageView(
                      controller: value.pageController,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        EmailInfo(),
                        NameInfo(),
                        BirthDateInfo(),
                        GenderInfo(),
                        SchoolInfo(),
                        PhotoInfo()
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 40.0),
                          child: InkWell(
                            onTap: () {
                              if (value.pageController.page != 5.0) {
                                value.pageController.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                                value.topProgressBar =
                                    (value.pageController.page + 2) * 0.16;
                              } else {
                                Navigator.of(context).pushReplacement(
                                  FadeRoute(
                                    page: HomeSrc(),
                                  ),
                                );
                              }
                            },
                            child: ContinueBtn('CONTINUE'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
