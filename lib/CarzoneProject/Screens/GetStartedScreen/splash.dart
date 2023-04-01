import 'package:carzoneproject/CarzoneProject/Screens/Welcome/Welcome01/welcom01.dart';
import 'package:flutter/material.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://apollolocksmithga.com/wp-content/uploads/2015/04/Homeslider-mobile-1-ApolloLocksmith.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20,
                          top: MediaQuery.of(context).size.width * 0.3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Car",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 55,
                              fontFamily: 'Lato',
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 6,
                            height: MediaQuery.of(context).size.width * 0.18,
                            color: Color(0xffA0331A),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Zone",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 55,
                              fontFamily: 'Lato',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                        child: Column(
                      children: [
                        Text(
                          "for car spare parts",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontFamily: 'Lato',
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Welcome",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Lato',
                          ),
                        ),
                      ],
                    ))
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => welcom01()));
                },
                child: Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.86,
                      left: MediaQuery.of(context).size.width * 0.24),
                  height: MediaQuery.of(context).size.width * 0.15,
                  width: MediaQuery.of(context).size.width * 0.55,
                  decoration: BoxDecoration(
                    color: Color(0xffA0331A),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "GET STARTED",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: 'Lato',
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 25,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
