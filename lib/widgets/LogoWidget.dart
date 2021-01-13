import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {

  double marginTop = 0;

  LogoWidget({ this.marginTop });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: marginTop ),
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 50.0,
            child: Text(
              'Daily Recipe',
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
                fontFamily: 'LemongrassScript'
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(60.0),
              ),
              color: Colors.white.withOpacity(0.4),
              image: DecorationImage(
                image: AssetImage('assets/images/art_image.png'),
                alignment: Alignment(0, -0.7),
              ),
            ),
            width: 111,
            height: 111,
            child: null,
          ),
        ],
      ),
    );
  }
}
