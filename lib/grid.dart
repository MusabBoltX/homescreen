import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:circle_wheel_scroll/circle_wheel_scroll_view.dart';
import 'package:flutter/services.dart';
import 'package:new_gridview/Bucket.dart';


class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Demo(),
    );
  }
}

class Demo extends StatefulWidget {

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override

  Widget build(BuildContext context)

  //===========================OrientationLock================================//
  {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return Scaffold(
        resizeToAvoidBottomInset: false,
        resizeToAvoidBottomPadding: false,
        //
        //
        //===================================appbar==============================================//
        //
      appBar: AppBar(
        //================Text==============================//

        title: Text(
          "HEALTHSOLUTIONS",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.black,
            fontSize: 18.0,
          ),
        ),
        actions: <Widget>[
          //===================bucket====================//

          new IconButton(
            icon: Image.asset('assets/Engitech/Icon 8.jpg',
                height: 22.0, width: 22.0),
            tooltip: 'Closes application',
            onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Equipments()));
            },
          ),

          //===================call======================//

          IconButton(
            icon: Icon(Icons.call),
            onPressed: () {},
            color: Colors.black,
            iconSize: 30.0,
          ),
        ],

        //===================designing===================//
        backgroundColor: Colors.white,
        elevation: 30.0,
      ),
    //
    //
    //
    //===================================drawer=================================================//

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          children: <Widget>[
            //============Drawer_Header=============//
            UserAccountsDrawerHeader(
              accountName: Text(
                "Syed Musab",
                style: TextStyle(fontSize: 20.0),
              ),
              accountEmail: Text("musabsyed714@gmail.com"),
              currentAccountPicture: CircleAvatar(
                  child: Image.asset("assets/Engitech/bloods.png")),
            ),

            //==============List_View===============//
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
              leading: Text(
                "Ambulance",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Icon(Icons.add_box),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Equipments()));
              },
            ), //1

            ListTile(
              contentPadding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
              leading: Text(
                "Blood",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Icon(Icons.add_box),
              onTap: () {},
            ), //2

            ListTile(
              contentPadding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
              leading: Text(
                "Chemist",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Icon(Icons.add_box),
              onTap: () {},
            ), //3

            ListTile(
              contentPadding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
              leading: Text(
                "Diagnostic Lab",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Icon(Icons.add_box),
              onTap: () {},
            ), //4

            ListTile(
              contentPadding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
              leading: Text(
                "Euippments",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Icon(Icons.add_box),
              onTap: () {},
            ), //5

            ListTile(
              contentPadding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
              leading: Text(
                "Fitness",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Icon(Icons.add_box),
              onTap: () {},
            ), //6

            ListTile(
              contentPadding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
              leading: Text(
                "General Physicians",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Icon(Icons.add_box),
              onTap: () {},
            ), //7

            ListTile(
              contentPadding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
              leading: Text(
                "Health Care and Nursing",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Icon(Icons.add_box),
              onTap: () {},
            ), //8
          ],
        ),
      ),
      //
      //
      //==========================================body==========================================//
      //
      //
      //===================================BackgroundImage======================================//

      body: Container(
       constraints: BoxConstraints.expand(),
       decoration: BoxDecoration(
         image: DecorationImage(
             image: AssetImage("assets/Engitech/BackImage.jpg"),
             fit: BoxFit.cover
         ),
       ),
       width: double.infinity,
       height: MediaQuery.of(context).size.height*0.8,

      child: Center(
          child: Container(

            width: MediaQuery.of(context).size.width,

            //================================ScrollView===============================//

            child: CircleListScrollView(

              radius: MediaQuery.of(context).size.width * 0.75,
              axis: Axis.vertical,
              itemExtent: 75,
              //physics: CircleFixedExtentScrollPhysics(),

            //===========================Scrolling Items====================================//

                  children: <Widget>[

                    ClipRRect(
                      child: Container(
                        child: Center(
                              child: Image(
                                image: AssetImage(
                                  "assets/Engitech/ambulances.png",
                              ),
                              ),
                            ),
                        ),
                      ),


                    ClipRRect(
                      child: Container(
                        child: MaterialButton(
                            child: Image(
                              image: AssetImage(
                                "assets/Engitech/bloods.png",
                              ),
                            ),
                              onPressed: (){
                              print('fgbdrt');
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Equipments()));
                              },
                            ),
                            ),
                            ),

                    ClipRRect(
                            borderRadius: BorderRadius.circular(90),
                            child: Container(
                              child: Center(
                                child: Image(
                                  image: AssetImage(
                                    'assets/Engitech/chemists.png',
                                  ),
                                ),
                              ),
                            ),
                    ),

                            ClipRRect(
                            borderRadius: BorderRadius.circular(90),
                             child: Container(
                              child: Center(
                                child: Image(
                            image: AssetImage(
                              'assets/Engitech/diagnostics.png',
                            ),
                          ),
                        ),
                      ),
                    ),

                    ClipRRect(
                      borderRadius: BorderRadius.circular(90),
                      child: Container(
                           child: Center(
                               child: Image(
                                 image: AssetImage(
                                   "assets/Engitech/equipments.png",
                                  ),
                               ),
                           ),
                           ),
                      ),


                    ClipRRect(
                      borderRadius: BorderRadius.circular(90),
                      child: Container(
                        child: Center(
                          child: Image(
                            image: AssetImage(
                              "assets/Engitech/facilitieses.png",
                            ),
                          ),
                        ),
                      ),
                    ),

                    ClipRRect(
                      borderRadius: BorderRadius.circular(90),
                      child: Container(
                        child: Center(
                          child: Image(
                            image: AssetImage(
                              "assets/Engitech/fitness.png",
                            ),
                          ),
                        ),
                      ),
                    ),

                    ClipRRect(
                      borderRadius: BorderRadius.circular(90),
                      child: Container(
                        child: Center(
                          child: Image(
                            image: AssetImage(
                              "assets/Engitech/generalphysicians.png",
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
            ),
          ),
      ),
     ),
    );
  }
}
