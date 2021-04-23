import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tinder_cloan/view/Widgets/continueBtn.dart';
import 'package:tinder_cloan/view/inputInfo/InputInfo.dart';
import 'package:tinder_cloan/view/pageRoute/FadeRoute.dart';

class MobileNoVerify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.pinkAccent,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: DesignMainView(),
    );
  }
}

class DesignMainView extends StatefulWidget {
  @override
  _DesignMainViewState createState() => _DesignMainViewState();
}

class _DesignMainViewState extends State<DesignMainView> {
  String selectedValue = "+91 IN";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'My number is ',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Flexible(
                    child: DropdownButton(
                      value: selectedValue,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value;
                        });
                      },
                      items: <String>['+91 IN', '+44 UK', '+1 USA']
                          .map(
                            (e) => DropdownMenuItem(
                              child: Text(e),
                              value: e,
                            ),
                          )
                          .toList(),
                    ),
                    flex: 1,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Flexible(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Phone Number",
                        isDense: true,
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                    flex: 2,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Changed your phone no?",
                    style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "LOGIN WITH EMAIL",
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 12,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "When you tap continue. Tinder will send a text with verification code. Message and data rates may apply. the verified phone number can be used to login.",
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 14,
                ),
              ),
              Text(
                "Learn what happens when your number changes.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  decoration: TextDecoration.underline,
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: InkWell(
                  child: ContinueBtn('CONTINUE'),
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      FadeRoute(
                        page: InputInfo(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
