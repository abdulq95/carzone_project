import 'package:carzoneproject/CarzoneProject/Screens/GetStartedScreen/splash.dart';
import 'package:carzoneproject/CarzoneProject/Screens/HomeScreen/homeDiscover.dart';
import 'package:carzoneproject/CarzoneProject/Screens/Welcome/Welcome01/welcom01.dart';
import 'package:flutter/material.dart';
class welcom03 extends StatefulWidget {
  const welcom03({Key? key}) : super(key: key);

  @override
  State<welcom03> createState() => _welcom03State();
}

class _welcom03State extends State<welcom03> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => splash()));
            },
            child: Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.width * 0.12,
                left: 20,
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
                    height: MediaQuery.of(context).size.width * 0.17,
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
                          color: Color(0xff232323),
                          fontSize: 15,
                          fontFamily: 'Lato'
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: MediaQuery.of(context).size.width * 0.3,
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(
                  color: Color(0xff9e9e9e),
                  borderRadius: BorderRadius.all(Radius.circular(60)),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://ivyedgeglobal.com/wp-content/uploads/2017/11/Male-Face-Icon.png"),
                    fit: BoxFit.cover,
                  ),
                ),


              ),
              SizedBox(
                height: 40,
              ),
              Text("Welcome Back",style: TextStyle(fontSize: 28,color: Colors.black,fontWeight: FontWeight.bold,fontFamily: 'Lato'),),
              SizedBox(
                height: 5,
              ),
              Text("Abdul Qudoos",style: TextStyle(fontSize: 23,color: Colors.black,fontFamily: 'Lato'),),
              SizedBox(
                height:35,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => homeDiscover()));
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
                        "CONTINUE AS Abdul Qudoos",
                        style: TextStyle(fontSize: 15, color: Colors.white,fontFamily: 'Lato'),
                      ),
                    ],
                  ),

                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => welcom01()));
                },
                child:        Container(
                  height: MediaQuery.of(context).size.width * 0.12,
                  width: MediaQuery.of(context).size.width * 0.89,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(blurRadius: 0.1)],
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "SWITCH ACCOUNT",
                        style: TextStyle(fontSize: 15, color: Colors.black,fontFamily: 'Lato'),
                      ),
                    ],
                  ),
                ),),
              SizedBox(
                height: MediaQuery.of(context).size.width*0.2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(color: Colors.black,fontFamily: 'Lato'),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => welcom01()));
                    },
                    child:       Text(
                      "Sign in",
                      style: TextStyle(color: Colors.redAccent),
                    ),),
                ],
              ),
            ],

          ),
        ],
      ),
    );
  }
}
