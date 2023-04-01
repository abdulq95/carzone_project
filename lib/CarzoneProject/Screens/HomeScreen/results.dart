import 'package:carzoneproject/CarzoneProject/Screens/HomeScreen/homeDiscover.dart';
import 'package:carzoneproject/CarzoneProject/Screens/HomeScreen/search.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class results extends StatefulWidget {
  const results({Key? key}) : super(key: key);

  @override
  State<results> createState() => _resultsState();
}

class _resultsState extends State<results> {
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
      name: "BMW X6 2009 Head \nLights",
      values: ("\$215"),
      images:
          ("images/kisspng-car-nexen-tire-tread-kumho-tire-tires-5abc5c32e17184.8769965615222938109234-removebg-preview.png"),
    ),
    DataTiles(
      name: "BMW X6 2020 rear \nbu..",
      values: ("\$645"),
      images:
          ("images/kisspng-car-nexen-tire-tread-kumho-tire-tires-5abc5c32e17184.8769965615222938109234-removebg-preview.png"),
    ),
  ];
  int _selected = 0;
  String selectedPlace = '';
  List<Widget> screens = [
    homeDiscover(),
  ];
  get primaryColor => null;
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
            "Search",
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
          color: Color(0xffBEBEBE),
          activeColor: Color(0xffA0331A),
          tabs: const [
            GButton(
                icon: Icons.home_outlined,
                iconSize: 30,
                text: 'Home',
                textStyle: TextStyle(
                  fontFamily: 'Lato',
                  color: Color(0xffA0331A),
                )),
            GButton(
                icon: Icons.shopping_basket,
                iconSize: 30,
                text: 'Cart',
                textStyle: TextStyle(
                  fontFamily: 'Lato',
                  color: Color(0xffA0331A),
                )),
            GButton(
              icon: Icons.person_outline_outlined,
              iconSize: 30,
              text: 'Likes',
              textStyle: TextStyle(
                fontFamily: 'Lato',
                color: Color(0xffA0331A),
              ),
            ),
            GButton(
              icon: Icons.settings_outlined,
              iconSize: 30,
              text: 'Likes',
              textStyle: TextStyle(
                fontFamily: 'Lato',
                color: Color(0xffA0331A),
              ),
            ),
          ],
        ),
      body:   Padding(
        padding: EdgeInsets.only( left: 25,right: 20,top: 20,),
        child:  Column(
        children: [
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Text("Results",style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontFamily: 'Lato',
              fontWeight: FontWeight.bold
          ),
          ),
          Text("15 Items found",style: TextStyle(
            color: Color(0xff232323),
            fontSize: 13,
            fontFamily: 'Lato',
          ),
          ),

        ],
      ),
Expanded(

  child: ListView.builder(itemBuilder: (context,index){
  return
    Padding(
    padding: EdgeInsets.only(top: 10),

     child: Container(
    color: Colors.white,
    height: 150,

    child:  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

    Container(
            width: MediaQuery.of(context).size.width*0.3,
            height:MediaQuery.of(context).size.width*0.3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),

                boxShadow: [BoxShadow(blurRadius: 0.2)],
                color: Colors.white,
                image: DecorationImage(
                  fit:BoxFit.cover,
                  image: AssetImage(dataTilesList[index].images),

                )
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text(dataTilesList[index].name,style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Lato',
              ),),
           Row(

             children: [
               Icon(Icons.shopping_basket, size: 20, color: Color(0xffA0331A),),
               SizedBox(
                 width: 20,
               ),
               Icon(Icons.favorite_border_outlined, size: 20, color:Colors.black45,),

             ],
           ),


            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
              Text(dataTilesList[index].values,style: TextStyle(
                color: Colors.red,
                fontSize: 18,
                fontFamily: 'Lato',
                fontWeight: FontWeight.bold
              ),),
              Row(
                children: [
                  Icon(Icons.star, size: 20, color: Color(0xffA0331A),),
                  Icon(Icons.star, size: 20, color: Color(0xffA0331A),),
                  Icon(Icons.star, size: 20, color: Color(0xffA0331A),),
                  Icon(Icons.star, size: 20, color: Color(0xffA0331A),),

                ],
              ),


            ],
          ),
        ],
      ),

  ),);






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
