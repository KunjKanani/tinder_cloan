import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:provider/provider.dart';
import 'package:tinder_cloan/model/bindUser.dart';
import 'package:tinder_cloan/modelView/homeScrProvider.dart';

class TinderCard extends StatelessWidget {

  BindUser user;
  @override
  Widget build(BuildContext context) {
    user = BindUser();

    return Consumer<HomeScrProvider>(
      builder: (context, value, child) => Container(
        height: 500,
        margin: EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: TinderSwapCard(
          cardController: value.cardController,
          maxHeight: 600,

          maxWidth: MediaQuery.of(context).size.width,
          stackNum: user.users.length,
          minHeight: 500,
          minWidth: MediaQuery.of(context).size.width - 40,
          orientation: AmassOrientation.BOTTOM,
          cardBuilder: (BuildContext context, int index) => Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  user.users.elementAt(index).img,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${user.users.elementAt(index).name} ${user.users.elementAt(index).age}",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.info,
                            color: Colors.white,
                            size: 30,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.white,
                            size: 16,
                          ),
                          Text(
                            "${user.users.elementAt(index).city}",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          totalNum: user.users.length,
        ),
      ),
    );
  }
}
