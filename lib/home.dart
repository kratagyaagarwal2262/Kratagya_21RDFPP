import 'package:flutter/material.dart';
import 'package:touchstone/bottombar.dart';
import 'package:touchstone/rowbutton.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  BottomBar instance = BottomBar();
  Rows instance2 = Rows();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      // Return the widget in file bottombar.dart
      bottomNavigationBar: instance.bottomBar(context),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/Circles.png',
                  ),
                  fit: BoxFit.cover
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // First Child of Row which is uses to display control panel
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(20.0,30.0,0.0, 0.0),
                        child: Text(
                          "Control",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35.0,
                              color: Colors.white
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20.0,70.0, 0.0, 0.0),
                        child: Text(
                          "Panel",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ]
                  ),
                  SizedBox(width: 130.0,),
                  // Second Child of Row which is used to display the Circular Avatar
                  Container(
                    padding: EdgeInsets.only(top: 20.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/user.png',
                      ),
                      radius: 45.0,
                      child: MaterialButton(
                        onPressed: (){
                          print("This was pressed");
                        },
                      )
                    ),
                  )
                  ],
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: Material(
              color: Colors.white70,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0)
                )
              ),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 200.0,top: 20.0),
                      child: Text("All Rooms",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 23.0
                      ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 470.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              instance2.rows('assets/images/bed.png','Bed Room',4, context),
                              instance2.rows('assets/images/room.png','Living Room',2,context),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              instance2.rows('assets/images/kitchen.png','Kitchen',5,context),
                              instance2.rows('assets/images/bathtube.png','Bath Room',1,context),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              instance2.rows('assets/images/house.png','Outdoor',5,context),
                              instance2.rows('assets/images/balcony.png','Balcony',2,context),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  // This Widget would display the bottom most widget

}
