import 'package:carzoneproject/CarzoneProject/Screens/CartScreen/checkout/address.dart';
import 'package:carzoneproject/CarzoneProject/Screens/HomeScreen/category.dart';
import 'package:carzoneproject/CarzoneProject/Screens/HomeScreen/search.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class homeDiscover extends StatefulWidget {
  const homeDiscover({Key? key}) : super(key: key);

  @override
  State<homeDiscover> createState() => _homeDiscoverState();
}

class _homeDiscoverState extends State<homeDiscover> {
  final List<DataTiles> dataTilesList = [
    DataTiles(
      name: "Car Engine",
      values: ("\$850"),
      images:("images/02.png"),
    ),
    DataTiles(
      name: "Car Brakes ",
      values: ("\$25"),
      images:
      ("images/01-removebg-preview.png"),
    ),
    DataTiles(
      name: "Car Engine",
      values: ("\$850"),
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
          "Discover",
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

      body:   Padding(
        padding: EdgeInsets.only( left: 5,right: 5,top: 20,),
        child:  Column(
          children: [
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(
                        left: 25, right: 10, top: 10, bottom: 50)),
                Text(
                  "All",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff232323),
                      fontFamily: 'Lato'),
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  "New Cars",
                  style: TextStyle(
                      fontSize: 17,
                      color: Color(0xffBEBEBE),
                      fontFamily: 'Lato'),
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Old Cars",
                  style: TextStyle(
                      fontSize: 17,
                      color: Color(0xffBEBEBE),
                      fontFamily: 'Lato'),
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Electric Cars",
                  style: TextStyle(
                      fontSize: 17,
                      color: Color(0xffBEBEBE),
                      fontFamily: 'Lato'),
                ),
              ],
            ),
            Expanded(

              child: ListView.builder(itemBuilder: (context,index){
                return Padding(
                    padding: EdgeInsets.only(top: 10),

                    child: Center(
                    child:Container(
                      color: Colors.white,
                      height: 225,

                      child:    Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.width * 0.55,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                image: AssetImage(dataTilesList[index].images),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.width * 0.38),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: MediaQuery.of(context).size.width * 0.17,
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10)),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          dataTilesList[index].name,
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Color(0xff232323),
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Lato'),
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Color(0xffA0331A),
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Color(0xffA0331A),
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Color(0xffA0331A),
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Color(0xffA0331A),
                                              size: 20,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          dataTilesList[index].values,
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Lato'),
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.favorite_border_outlined,
                                              color: Color(0xff232323),
                                              size: 17,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Icon(
                                              Icons.shopping_basket,
                                              color: Color(0xffA0331A),
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: 5,
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
                        ],
                      ),

                    ),),
                );






              },
                itemCount: dataTilesList.length,

              ),




            )






          ],


        ),),
    );
  }
}
class DataTiles {
  DataTiles({required this.name, required this.images, required this.values});
  final String name;
  final String images;
  final String values;
}