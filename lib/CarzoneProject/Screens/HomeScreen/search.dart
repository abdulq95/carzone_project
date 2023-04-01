import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  TextEditingController? _textEditingController=TextEditingController ();
  List<String> carsListOnSearch=[];
  List<String> carsList=[
    'BMW Engine ',
    'BMW Head Lights',
    'BMW Back Linghts',
    'BMW Gearbox',
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
          "Search",
          style: TextStyle(
            color: Color(0xffA0331A),
            fontFamily: 'Lato',
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        actions: [

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
      body:Padding(padding: EdgeInsets.all(15),

        child:Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(20)
              ),
              child:TextField(
                onChanged: (value){
setState(() {
  carsListOnSearch=carsList.where((element) => element.contains(value)).toList();
});
                },
                controller: _textEditingController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  errorBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  contentPadding: EdgeInsets.all(15),

                  prefixIcon: Icon(Icons.search,color: Colors.black,size: 30,),

                  suffixIcon: GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pop();
                    },
                  child: Icon(Icons.close,color: Colors.black,size: 25,),

                  ),

                   ),
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount:_textEditingController!.text.isNotEmpty?carsListOnSearch.length:carsList.length,
                itemBuilder: (context,index){
                  return Padding(padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(_textEditingController!.text.isNotEmpty
                            ?carsListOnSearch[index]
                            :carsList[index],
                          style: TextStyle(color: Colors.black,fontSize: 20),)
                      ],
                    ),
                  );

                }),)
          ],
        ) ,





      ),

    );
  }
}
