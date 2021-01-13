import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class  CustomAppBar extends StatefulWidget{

  final Function parentAction;

  CustomAppBar({ Key key, this.parentAction }) : super(key: key);

  @override
  _CustomAppBarState createState() => new _CustomAppBarState();
}
class _CustomAppBarState extends State<CustomAppBar>  {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      width: double.infinity,
      height: 30,
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Positioned(
            left: 0,
            child: GestureDetector(
              child: Image.asset(
                'assets/images/menu.png',
                height: 16,
                width: 22,
                fit: BoxFit.cover,
              ),
              onTap: () => { 
                print("Clicked"),
                widget.parentAction()
              }
            ),
          ),
          Positioned(
            right: 0,
            child: GestureDetector(
              child: Icon(
                FontAwesomeIcons.bell,
                size: 28,
                color: Colors.white,
              ),
              onTap: () => {},
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              width: 10,
              height: 10,
              padding: EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 2,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              alignment: Alignment.center,
              child: null,
            ),
          ),
        ],
      ),
    );
  }
}
