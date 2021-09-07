import 'package:flutter/material.dart';
import 'package:touchstone/arguments.dart';
import 'package:touchstone/bottombar.dart';


class Light extends StatefulWidget {
  const Light({Key? key}) : super(key: key);

  @override
  _LightState createState() => _LightState();
}

class _LightState extends State<Light> {
  BottomBar instance = BottomBar();
  double _hue=255;
  late Color color = Colors.yellowAccent;
  @override
  Widget build (BuildContext context) {
    color = color.withAlpha(_hue.toInt());
    final args = ModalRoute.of(context)!.settings.arguments as Arguments;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      bottomNavigationBar: instance.bottomBar(context),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 5,
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
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // First Child of Row which is uses to display control panel
                      Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(20.0,20.0,0.0, 0.0),
                              child: Text(
                                "${args.roomname}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35.0,
                                    color: Colors.white
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(20.0,60.0, 0.0, 0.0),
                              child: Text(
                                "${args.lights} Lights",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 35.0,
                                  color: Colors.yellow[700],
                                ),
                              ),
                            ),
                          ]
                      ),
                      SizedBox(width: 30.0,),
                      // Second Child of Row which is used to display the Circular Avatar
                      Container(
                        child: Stack(
                          children: [
                            Image.asset('assets/images/light bulb.png',width: 150.0,color: color),
                            Image.asset('assets/images/Group 38.png',width: 150.0,),
                          ],
                        )
                      )
                    ],
                  ),
                 // This part of the code is meant to have a vertically
                  // Scrollable list for different light options,
                  // But I am not able to implement it just yet, Need some time.
                 /* Container(
                    height: 98.0,
                    width: double.infinity,
                        child: ListView(
                            scrollDirection: Axis.vertical,
                            children: [
                              Material(
                                child: ListTile(
                                  title: Text("dlja;"),
                        ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              Material(
                                child: ListTile(
                                  title: Text("lkjf;as")
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                        ]
                        ),
                        ),*/
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
                    SizedBox(height: 20.0,),
                    Container(
                      padding: EdgeInsets.only(left: 20.0),
                      width: double.infinity,
                      height: 370.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Colors",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize:25.0,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Container(
                            width: double.infinity,
                            height: 50.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width:35.0,
                                  height: 35.0,
                                  child: Material(
                                    shape: CircleBorder(
                                    ),
                                    color: Colors.red,
                                    child: GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          color = Colors.red.withAlpha(_hue.toInt());
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20.0,),
                                Container(
                                  width:35.0,
                                  height: 35.0,
                                  child: Material(
                                    shape: CircleBorder(
                                    ),
                                    color: Colors.greenAccent,
                                    child: GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          color = Colors.greenAccent.withAlpha(_hue.toInt());
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20.0,),
                                Container(
                                  width:35.0,
                                  height: 35.0,
                                  child: Material(
                                    shape: CircleBorder(
                                    ),
                                    color: Colors.lightBlue,
                                    child: GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          color = Colors.lightBlue.withAlpha(_hue.toInt());
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20.0,),
                                Container(
                                  width:35.0,
                                  height: 35.0,
                                  child: Material(
                                    shape: CircleBorder(
                                    ),
                                    color: Colors.purpleAccent,
                                    child: GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          color = Colors.purpleAccent;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20.0,),
                                Container(
                                  width:35.0,
                                  height: 35.0,
                                  child: Material(
                                    shape: CircleBorder(
                                    ),
                                    color: Colors.yellowAccent,
                                    child: GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          color = Colors.yellowAccent.withAlpha(_hue.toInt());
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Container(
                                  width:35.0,
                                  height: 35.0,
                                  child: ImageIcon(
                                    AssetImage(
                                      'assets/images/+.png',
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 20.0,),
                          Text(
                            "Intensity",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize:25.0,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                      Slider(
                        activeColor: color,
                        value: _hue,
                        min: 0,
                        max: 255,
                        label: _hue.toString(),
                        onChanged: (double value) {
                          setState(() {
                            _hue = value;
                          });
                        },
                        onChangeStart: (double value)
                        {
                          setState(() {
                            _hue = value;
                          });
                        },
                      )
                        ],
                      ),
              ),
              ]
            ),
          )
    )
          )
        ],
      ),
    );
  }
}
