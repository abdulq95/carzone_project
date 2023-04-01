import 'package:carzoneproject/CarzoneProject/Screens/GetStartedScreen/splash.dart';
import 'package:carzoneproject/CarzoneProject/Screens/Welcome/Welcome01/welcom01_1.dart';
import 'package:carzoneproject/CarzoneProject/Screens/Welcome/Welcome02/Welcome02.dart';
import 'package:carzoneproject/CarzoneProject/Screens/Welcome/Welcome03/Welcome03.dart';
import 'package:flutter/material.dart';
class welcom01 extends StatefulWidget {
  const welcom01({Key? key}) : super(key: key);

  @override
  State<welcom01> createState() => _welcom01State();
}

class _welcom01State extends State<welcom01> {
  bool _isSecurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(

        child:   Column(
          children: [
            Stack(
              children: [
                Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.height * 0.6,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://s3.amazonaws.com/beautifulnow_production/uploads/ckeditor_assets/pictures/9247/content_c1-Image-by-Fabien-Oefner.-Disintegrating.jpg"),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.width * 0.1),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Car",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontFamily: "Lato",
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: 6,
                                height:
                                MediaQuery.of(context).size.width * 0.15,
                                color: Color(0xffA0331A),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Zone",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontFamily: 'Lato',
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left:
                                      MediaQuery.of(context).size.width * 0.22),
                                  child: Text(
                                    "for car spare parts",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontFamily: 'Lato',
                                    ),
                                  ),
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => splash()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width * 0.1,
                      left: 20,
                    ),
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width * 0.35,
                  ),
                  height: MediaQuery.of(context).size.height * 0.45,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 2),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Welcome",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Lato',
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Sign up to get started and experience ",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        " great shopping deals",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(
                          horizontal: 40,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "Phone Number or Email",
                            labelStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.red,
                                )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.red,
                                )),
                            suffixIcon: togglePassword(),
                          ),
                          obscureText: _isSecurePassword,
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => welcom03()));
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.width * 0.12,
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
                                "SIGN IN",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),

            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => welcom01_1()));
              },
              child: Text(
                "Forgotten your password?",
                style: TextStyle(
                  color: Colors.redAccent,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 15,
                bottom: 12,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 2,
                      width: 10,
                      color: Colors.black54,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      child: Text(
                        "OR",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 1,
                    ),
                    Container(
                      height: 2,
                      width: 10,
                      color: Colors.black54,
                    ),
                  ]),
            ),
            Container(
              height: MediaQuery.of(context).size.width * 0.12,
              width: MediaQuery.of(context).size.width * 0.89,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(blurRadius: 0.1)],
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Image(
                    image: NetworkImage(
                      "https://cdn.b12.io/client_media/hFrglJLF/f7f4064c-63b2-11ea-880f-0242ac110002-png-regular_image.png",
                    ),
                    height: 40,
                    width: 40,
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Text(
                    "Sign In with Facebook",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: MediaQuery.of(context).size.width * 0.12,
              width: MediaQuery.of(context).size.width * 0.89,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(blurRadius: 0.1)],
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Image(
                    image: NetworkImage(
                      "https://th.bing.com/th/id/R.913f6d15970d8935364942e0002fac99?rik=J%2fWtxf1Hot%2fbiw&riu=http%3a%2f%2fwww.arageek.com%2fwp-content%2fuploads%2fGoogle-logo-New.jpg&ehk=7XCWH%2bd5wcWggMP2C0BzVEnNozjlGUAnybs1YT16wiw%3d&risl=&pid=ImgRaw&r=0",
                    ),
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Text(
                    "Sign In with Google",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => welcom02()));
                  },
                  child:         Text(
                    "Signup",
                    style: TextStyle(
                      color: Colors.redAccent,
                    ),
                  ),),
              ],
            ),
          ],
        ),


      ),
    );
  }


Widget togglePassword() {
  return IconButton(
    onPressed: () {
      setState(() {
        _isSecurePassword = !_isSecurePassword;
      });
    },
    icon: _isSecurePassword
        ? Icon(Icons.visibility)
        : Icon(Icons.visibility_off),
    color: Colors.grey,
  );
}
}
