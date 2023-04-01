import 'package:carzoneproject/CarzoneProject/Screens/Welcome/Welcome01/welcom01.dart';
import 'package:carzoneproject/CarzoneProject/Screens/Welcome/Welcome03/Welcome03.dart';
import 'package:flutter/material.dart';
class welcom02 extends StatefulWidget {
  const welcom02({Key? key}) : super(key: key);

  @override
  State<welcom02> createState() => _welcom02State();
}

class _welcom02State extends State<welcom02> {
  bool _isSecurePassword =true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(


        child:Padding(padding: EdgeInsets.only(top: 35),

          child: Center(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        margin: EdgeInsets.only(

                          right: MediaQuery.of(context).size.width*0.88,
                        ),
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          size: 25,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Car",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 50,
                                  fontFamily: 'Lato'
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: 6,
                              height: MediaQuery.of(context).size.width * 0.15,
                              color: Color(0xffA0331A),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Zone",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 50,
                                  fontFamily: 'Lato'
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.2,
                              ),
                              child: Text(
                                "for car spare parts",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Lato'

                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.width * 0.3,
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(
                            color: Color(0xff9e9e9e),
                            borderRadius: BorderRadius.all(Radius.circular(60)),
                          ),
                          child: Icon(
                            Icons.add_a_photo_outlined,
                            color: Colors.white,
                            size: 50,
                          ),
                        ),


                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.symmetric(
                                horizontal: 40,
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    labelText: "Name",
                                    labelStyle: TextStyle(color: Colors.grey, fontSize: 15,),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.red,
                                        ))),
                              ),
                            ),


                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.symmetric(
                            horizontal: 40,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: "Phone Number",
                                labelStyle: TextStyle(color: Colors.grey, fontSize: 15,),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.red,
                                    ))),
                          ),
                        ),

                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.symmetric(
                            horizontal: 40,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: "Email",
                                labelStyle: TextStyle(color: Colors.grey, fontSize: 15,),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.red,
                                    ))),
                          ),
                        ),

                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "Password",
                              labelStyle: TextStyle(color: Colors.grey, fontSize: 15,),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                  )
                              ),
                              suffixIcon: togglePassword(),
                            ),
                            obscureText: _isSecurePassword,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.45),
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(color: Colors.black, fontSize: 15,),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) => welcom03()));
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.width * 0.12,
                            width: MediaQuery.of(context).size.width * 0.89,
                            decoration: BoxDecoration(
                              color: Color(0xffA0331A),
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "SIGN UP",
                                  style: TextStyle(fontSize: 15, color: Colors.white,),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height:20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account?",
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => welcom01()));
                              },
                              child:         Text(
                                "Sign in",
                                style: TextStyle(
                                  color: Colors.redAccent,
                                ),
                              ),),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                ),
              ],
            ),
          ),
        ),



      ),
    );
  }

Widget togglePassword(){
  return IconButton(onPressed: (){
    setState((){
      _isSecurePassword=!_isSecurePassword;
    });

  }, icon: _isSecurePassword? Icon(Icons.visibility):Icon(Icons.visibility_off),
    color: Colors.grey,);

}
}