import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color.fromRGBO(45, 45, 45, 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            color: Color.fromRGBO(45, 45, 45, 1),
            margin: EdgeInsets.only(top: 50),
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            width: double.infinity,
            height: 60,
            child: Stack(
              alignment: Alignment.topLeft,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/images/user.png',
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Emma Holmes',
                            style: TextStyle(
                              fontFamily: 'Hellix',
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'View Profile',
                            style: TextStyle(
                              fontFamily: 'Hellix',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(123, 123, 123, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
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
          ),
          SizedBox(
            height: 200,
          ),
          menuItem('Home', (true) ? Icons.home : Icons.home_outlined, true),
          SizedBox(
            height: 50,
          ),
          menuItem('Favorites', (false) ? Icons.favorite : Icons.favorite_outline, false),
          SizedBox(
            height: 50,
          ),
          menuItem('Recently Viewed', (false) ? Icons.play_arrow : Icons.play_arrow_outlined, false),
          SizedBox(
            height: 50,
          ),
          menuItem('Settings', (false) ? Icons.settings : Icons.settings_outlined, false),
          SizedBox(
            height: 50,
          ),
          menuItem('About Us', (false) ? Icons.info_rounded : Icons.info_outline_rounded, false),
          SizedBox(
            height: 50,
          ),
          menuItem('Help', (false) ? Icons.help : Icons.help_outline, false),
          SizedBox(
            height: 50,
          ),
          menuItem('Sign Out', Icons.logout, false),
        ],
      ),
    );
  }

  Widget menuItem(title, icon, isActive) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        left: 30,
      ),
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(
            color: Color.fromRGBO(245, 90, 0, 1),
            width: (isActive) ? 3 : 0,
          ),
        ),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: (isActive) ? Color.fromRGBO(245, 90, 0, 1) : Color.fromRGBO(139, 139, 139, 1),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10,
            ),
            child: GestureDetector(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  color: (isActive) ? Color.fromRGBO(245, 90, 0, 1) : Color.fromRGBO(139, 139, 139, 1),
                  fontFamily: 'Hellix',
                  fontWeight: (isActive) ? FontWeight.w600: FontWeight.w300,
                ),
              ),
              onTap: () => {
                print("Clicked"),
              },
            ),
          ),
        ],
      ),
    );
  }
}
