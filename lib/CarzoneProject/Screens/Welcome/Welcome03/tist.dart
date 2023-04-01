import 'package:flutter/material.dart';
class tist extends StatefulWidget {
  const tist({Key? key}) : super(key: key);

  @override
  State<tist> createState() => _tistState();
}

class _tistState extends State<tist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:


      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child:  Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [




                  Container(
                    width: MediaQuery.of(context).size.width*0.45,
                    child: TextField(
                      decoration: InputDecoration(
labelText: 'ygyuhl',
                          labelStyle: TextStyle(color: Colors.grey, fontSize: 15,),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red,
                              ))),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.45,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'ygyuhl',
                          labelStyle: TextStyle(color: Colors.grey, fontSize: 15,),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red,
                              ))),
                    ),
                  ),

                ],
              ),

            ),
          ],


        ),
      ),



    );
  }
}
