import 'package:flutter/material.dart';
 class ContinueBtn extends StatelessWidget {
  final String btnText;

  ContinueBtn(this.btnText);

  @override
   Widget build(BuildContext context) {
     return Container(
       alignment: Alignment.bottomCenter,
       width: 317.0,
       height: 57.0,
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
           btnText,
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
