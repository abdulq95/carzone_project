import 'package:carzoneproject/CarzoneProject/Screens/CartScreen/checkout/address.dart';
import 'package:carzoneproject/CarzoneProject/Screens/CartScreen/checkout/pay.dart';
import 'package:carzoneproject/CarzoneProject/Screens/CartScreen/checkout/payments.dart';
import 'package:carzoneproject/CarzoneProject/Screens/HomeScreen/search.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class summary extends StatefulWidget {
  const summary({Key? key}) : super(key: key);

  @override
  State<summary> createState() => _summaryState();
}

class _summaryState extends State<summary> {
  final List<DataTiles> dataTilesList = [
    DataTiles(
      name: "BMW X6 2018 Engine ",
      values: ("\$2130"),
      images:
      ("images/kisspng-car-nexen-tire-tread-kumho-tire-tires-5abc5c32e17184.8769965615222938109234-removebg-preview.png"),
    ),
    DataTiles(
      name: "BMW X6 2013 Engine ",
      values: ("\$1915"),
      images:
      ("images/kisspng-car-nexen-tire-tread-kumho-tire-tires-5abc5c32e17184.8769965615222938109234-removebg-preview.png"),
    ),
    DataTiles(
      name: "BMW X6 2009 Head Li..",
      values: ("\$215"),
      images:
      ("images/kisspng-car-nexen-tire-tread-kumho-tire-tires-5abc5c32e17184.8769965615222938109234-removebg-preview.png"),
    ),
    DataTiles(
      name: "BMW X6 2020 rear bu..",
      values: ("\$645"),
      images:
      ("images/kisspng-car-nexen-tire-tread-kumho-tire-tires-5abc5c32e17184.8769965615222938109234-removebg-preview.png"),
    ),
  ];
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
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => search()));
              },
              child: Icon(
                Icons.search,
                color: Color(0xffBEBEBE),
                size: 28,
              ),
            ),
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
      body: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                          BoxShadow(color: Colors.red, blurRadius: 1)
                        ],
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
                  color: Colors.red,
                ),
                Stack(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        boxShadow: [
                          BoxShadow(color: Colors.red, blurRadius: 1)
                        ],
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
                  color: Colors.red,
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
                          color: Color(0xffA0331A),
                        ),
                      ),
                    ),
                  ],
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
                  "address",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Lato',
                  ),
                ),
                Text(
                  "payments",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Lato',
                  ),
                ),
                Text(
                  "summary",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Lato',
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Summary',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Lato',
                  ),
                ),
              ],
            ),

            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: dataTilesList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 40,top: 10),
                        child:   Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.width * 0.27,
                              width: MediaQuery.of(context).size.width * 0.30,
                              decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.all(Radius.circular(25)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 1,

                                  ),
                                ],
                                  image: DecorationImage(
                                    fit:BoxFit.cover,
                                    image: AssetImage(dataTilesList[index].images),

                                  )
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              dataTilesList[index].name,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontFamily: 'Lato',
                              ),
                            ),
                            Text(
                             dataTilesList[index].values,
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 15,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),



                    );
                  }),
            ),

            Container(
                width: MediaQuery.of(context).size.width * 1,
                height: 2,
                color: Colors.grey[100]),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Shipping Address",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Lato',
                  ),
                ),
                Icon(
                  Icons.check_circle,
                  color: Color(0xffA0331A),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => address()));
              },
              child: Text(
                "change",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 15,
                  fontFamily: 'Lato',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                width: MediaQuery.of(context).size.width * 1,
                height: 2,
                color: Colors.grey[100]),
            SizedBox(
              height: 10,
            ),
            Text(
              "Payment",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Lato',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  image: AssetImage(
                    "mastercard.png",
                  ),
                  width: 50,
                  height: 50,
                ),
                Icon(
                  Icons.check_circle,
                  color: Color(0xffA0331A),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => payments()));
              },
              child: Text(
                "change",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 15,
                  fontFamily: 'Lato',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => payments()));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.width * 0.11,
                    width: MediaQuery.of(context).size.width * 0.38,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff9f331a),
                          blurRadius: 1,
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "BACK",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontFamily: 'Lato'),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => pay()));
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
                          "PAY",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontFamily: 'Lato'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
class DataTiles {
  DataTiles({required this.name, required this.images, required this.values});
  final String name;
  final String images;
  final String values;
}