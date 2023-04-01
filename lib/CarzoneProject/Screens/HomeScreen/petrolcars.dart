import 'package:carzoneproject/CarzoneProject/Screens/HomeScreen/search.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class petrolcars extends StatefulWidget {
  const petrolcars({Key? key}) : super(key: key);

  @override
  State<petrolcars> createState() => _petrolcarsState();
}

class _petrolcarsState extends State<petrolcars> {
  final List<DataTiles> dataTilesList = [
    DataTiles(
      name: "SUV",
      items: ("+1000 items"),
      images: ("images/i8.png"),
    ),
    DataTiles(
      name: "Hatchback",
      items: ("150 items"),
      images: ("images/i2.png"),
    ),
    DataTiles(
      name: "Sport Car",
      items: ("100 items"),
      images: ("images/i6.png"),
    ),
    DataTiles(
      name: "Pockup Truck",
      items: ("800 items"),
      images: ("images/i7.png"),
    ),
    DataTiles(
      name: "Sedan",
      items: ("+1000 items"),
      images: ("images/i3.png"),
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
            "Petrol Cars",
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
        body: Padding(
          padding: EdgeInsets.only(top: 25, left: 20),
          child: ListView.builder(
            itemBuilder: (context, index) {

            return  Container(
                color: Colors.white,
                height: 130,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Image.asset(
                      dataTilesList[index].images,
                      width: 130,
                    ),
                   Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            dataTilesList[index].name,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Lato',
                            ),
                          ),
                          Text(
                            dataTilesList[index].items,
                            style: TextStyle(
                              color: Color(0xff232323),
                              fontSize: 13,
                              fontFamily: 'Lato',
                            ),
                          )
                        ],
                      ),

                    Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xff232323),
                          size: 20,
                        ),
                  ],
                ),
              );





            },
            itemCount: dataTilesList.length,
          ),
        )
    );
  }
}

class DataTiles {
  DataTiles({required this.name, required this.images, required this.items});
  final String name;
  final String images;
  final String items;
}
