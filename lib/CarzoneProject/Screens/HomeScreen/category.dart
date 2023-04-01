import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class category extends StatefulWidget {
  const category({Key? key}) : super(key: key);

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: GNav(



          iconSize: 30,
          color: Colors.grey,
          activeColor: Color(0xffA0331A),
          tabs: const [
            GButton(
              icon: Icons.home_outlined,

              text: 'Home',
            ),
            GButton(
              icon: Icons.shopping_basket,

              text: 'Cart',
            ),
            GButton(
              icon: Icons.person_outline_outlined,

              text: 'Account',

            ),
            GButton(
              icon: Icons.settings_outlined,

              text: 'Settings',

            ),


          ],

        ),
        body: Padding(
            padding: EdgeInsets.only(top: 20),
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width * 1.00),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: MediaQuery.of(context).size.width * 0.60,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(60),
                          bottomLeft: Radius.circular(60)),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("images/i5.jpg"),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20, top: 35),
                          child: Text(
                            "Car Accessories",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              fontFamily: 'Lato',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              right: 25,
                              top: MediaQuery.of(context).size.width * 0.2),
                          child: Stack(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25))),
                                child: Center(
                                  child: Icon(
                                    Icons.add,
                                    color: Color(0xffA0331A),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width * 0.65),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: MediaQuery.of(context).size.width * 0.50,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(60),
                          bottomLeft: Radius.circular(60)),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("images/i4.jpg"),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20, top: 65),
                          child: Text(
                            "Electric Cars",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              fontFamily: 'Lato',
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width * 0.45),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: MediaQuery.of(context).size.width * 0.40,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(60),
                          bottomLeft: Radius.circular(60)),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("images/i9.jpg"),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20, top: 20),
                          child: Text(
                            "Hybrid Cars",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              fontFamily: 'Lato',
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width * 0.17),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: MediaQuery.of(context).size.width * 0.40,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(60),
                          bottomLeft: Radius.circular(60)),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("images/i1.jpg"),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20, top: 20),
                          child: Text(
                            "Petrol Cars",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              fontFamily: 'Lato',
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: MediaQuery.of(context).size.width * 0.30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(60),
                          bottomLeft: Radius.circular(60)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.menu,
                            color: Color(0xff232323),
                            size: 30,
                          ),
                          Text(
                            "Category",
                            style: TextStyle(
                              color: Color(0xffA0331A),
                              fontFamily: 'Lato',
                              fontSize: 30,
                            ),
                          ),
                          Icon(
                            Icons.search,
                            color: Color(0xffBEBEBE),
                            size: 30,
                          ),
                        ],
                      ),
                    )),
              ],
            )));
  }
}
