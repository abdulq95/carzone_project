import 'package:carzoneproject/CarzoneProject/Screens/HomeScreen/search.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class pay extends StatefulWidget {
  const pay({Key? key}) : super(key: key);

  @override
  State<pay> createState() => _payState();
}

class _payState extends State<pay> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.menu,
              color: Color(0xff232323),
              size: 28,
            ),
          ],
        ),
        title: Text(
          "Checkout",
          style: TextStyle(
            color: Color(0xffA0331A),
            fontFamily: 'Lato',
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(padding: EdgeInsets.only(right: 10),
            child:  GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => search()));
              },
              child:  Icon(
                Icons.search,
                color: Color(0xffBEBEBE),
                size: 28,
              ),),


          ),

        ],
        elevation: 0,
      ),
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
      body: Padding(padding: EdgeInsets.only(top: 30),
        child:    Center(
            child: Column(
              children: [
                Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Order Accepted",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontFamily: 'Lato',
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Your Order No. #123-456 "
                  ,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Lato',
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(

                  "has been placed",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Lato',
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => pay()));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.width * 0.13,
                    width: MediaQuery.of(context).size.width * 0.89,
                    decoration: BoxDecoration(
                      color: Color(0xff9f331a),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "TRACK ORDER",
                          style: TextStyle(fontSize: 18, color: Colors.white,fontFamily: 'Lato'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ),


    );
  }
}
