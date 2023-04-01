import 'package:carzoneproject/CarzoneProject/Screens/CartScreen/checkout/payments.dart';
import 'package:carzoneproject/CarzoneProject/Screens/HomeScreen/homeDiscover.dart';
import 'package:carzoneproject/CarzoneProject/Screens/HomeScreen/search.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class address extends StatefulWidget {
  const address({Key? key}) : super(key: key);

  @override
  State<address> createState() => _addressState();
}

class _addressState extends State<address> {


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
body: SingleChildScrollView(
child:Padding(padding: EdgeInsets.only(left: 16.0,right: 16.0),
  child:Container(
    width: MediaQuery.of(context).size.width,
    child:  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Stack(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [

                      BoxShadow(


                          blurRadius: 1)],
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5, top: 5),
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xffA0331A),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.34,
              height: 1,
              color: Colors.grey[200],
            ),
            Stack(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [BoxShadow(blurRadius: 0.2)],
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5, top: 5),
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),

                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.34,
              height: 1,
              color: Colors.grey[200],
            ),
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                boxShadow: [BoxShadow(blurRadius: 0.2)],
                color: Colors.white,
              ),
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
              'Address',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Lato',
              ),
            ),
            Text(
              'Payments',
              style: TextStyle(

                color: Color(0xffBEBEBE),
                fontSize: 15,
                fontFamily: 'Lato',
              ),
            ),
            Text(
              'Summary',
              style: TextStyle(
                color: Color(0xffBEBEBE),
                fontSize: 15,
                fontFamily: 'Lato',
              ),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Icon(
              Icons.check_circle,
              color: Color(0xffA0331A),
            ),
            SizedBox(
              width: 10,
            ),
            Text("Billing address is the same as delivery address",style: TextStyle(
              color: Colors.black,
              fontSize: 15,

            ),)
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text("Street 1",style: TextStyle(color: Colors.grey,fontSize: 15),),

        TextField(
          decoration: InputDecoration(

              labelStyle: TextStyle(color: Colors.grey, fontSize: 15,),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ))),
        ),
        SizedBox(
          height: 20,
        ),
        Text("Street 2",style: TextStyle(color: Colors.grey,fontSize: 15),),

        TextField(
          decoration: InputDecoration(

              labelStyle: TextStyle(color: Colors.grey, fontSize: 15,),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ))),
        ),
        SizedBox(
          height: 20,
        ),
        Text("City",style: TextStyle(color: Colors.grey,fontSize: 15),),

        TextField(
          decoration: InputDecoration(

              labelStyle: TextStyle(color: Colors.grey, fontSize: 15,),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ))),
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Text("Prvince",style: TextStyle(color: Colors.grey,fontSize: 15),),
            SizedBox(
              width: MediaQuery.of(context).size.width*0.37,
            ),
            Text("Country",style: TextStyle(color: Colors.grey,fontSize: 15),),

          ],
        ),

        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*0.08,
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
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: MediaQuery.of(context).size.width * 0.11,
              width: MediaQuery.of(context).size.width * 0.38,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow
                    (
                    color: Color(0xff9f331a),

                    blurRadius: 1,)],

              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "BACK",
                    style: TextStyle(fontSize: 18, color: Colors.black,fontFamily: 'Lato'),
                  ),
                ],
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => payments()));
              },
              child: Container(
                height: MediaQuery.of(context).size.width * 0.12,
                width: MediaQuery.of(context).size.width * 0.38,
                decoration: BoxDecoration(
                  color: Color(0xff9f331a),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "NEXT",
                      style: TextStyle(fontSize: 18, color: Colors.white,fontFamily: 'Lato'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),


      ],
    ),
  )

) ,

),
    );
  }
}

