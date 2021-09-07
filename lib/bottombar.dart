import 'package:flutter/material.dart';

// This class  creates a bottom navigation bar as required
class BottomBar{
  Widget  bottomBar(BuildContext context)
  {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              onPressed: (){
                Navigator.of(context).pushNamed('light');
              },
              icon: ImageIcon(
                  AssetImage(
                      'assets/images/bulb.png'
                  )
              )
          ),
          IconButton(
              onPressed: (){

              },
              icon: ImageIcon(
                  AssetImage(
                      'assets/images/Icon feather-home.png'
                  )
              )
          ),
          IconButton(
              onPressed: (){

              },
              icon: ImageIcon(
                  AssetImage(
                    'assets/images/Icon feather-settings.png',
                  )
              )
          ),
        ],
      ),
    );
  }
}