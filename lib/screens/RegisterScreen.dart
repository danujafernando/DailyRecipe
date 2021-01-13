import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/LogoWidget.dart';
import './LoginScreen.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameEditingController = TextEditingController();
    TextEditingController emailEditingController = TextEditingController();
    TextEditingController passwordEditingController = TextEditingController();

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg_image.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.7), BlendMode.darken),
          ),
        ),
        child: Column(
          children: <Widget>[
            LogoWidget(
              marginTop: 150.0,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Register',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontFamily: 'Hellix',
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: TextFormField(
                autofocus: false,
                obscureText: false,
                keyboardType: TextInputType.text,
                controller: nameEditingController,
                decoration: InputDecoration(
                  hintText: "Full Name",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(161, 161, 161, 1),
                    fontFamily: 'Hellix',
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color.fromRGBO(70, 70, 70, 1),
                      style: BorderStyle.solid,
                    ),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color.fromRGBO(70, 70, 70, 1),
                      style: BorderStyle.solid,
                    ),
                  ),
                  prefixIcon: Icon(
                    FontAwesomeIcons.user,
                    color: Color.fromRGBO(161, 161, 161, 1),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: TextFormField(
                autofocus: false,
                obscureText: false,
                keyboardType: TextInputType.emailAddress,
                controller: emailEditingController,
                decoration: InputDecoration(
                  hintText: "Email Address",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(161, 161, 161, 1),
                    fontFamily: 'Hellix',
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color.fromRGBO(70, 70, 70, 1),
                      style: BorderStyle.solid,
                    ),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color.fromRGBO(70, 70, 70, 1),
                      style: BorderStyle.solid,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.mail_outline,
                    color: Color.fromRGBO(161, 161, 161, 1),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: TextFormField(
                autofocus: false,
                obscureText: true,
                keyboardType: TextInputType.text,
                controller: passwordEditingController,
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(161, 161, 161, 1),
                    fontFamily: 'Hellix',
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color.fromRGBO(70, 70, 70, 1),
                      style: BorderStyle.solid,
                    ),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color.fromRGBO(70, 70, 70, 1),
                      style: BorderStyle.solid,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: Color.fromRGBO(161, 161, 161, 1),
                  ),
                  suffixIcon: IconButton(
                      icon: Icon(
                        Icons.visibility_off_outlined,
                        color: Color.fromRGBO(161, 161, 161, 1),
                      ),
                      onPressed: () => {}),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              child: Container(
                height: 50.0,
                margin: EdgeInsets.only(
                  left: 25,
                  right: 25,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.0),
                  ),
                  color: Color.fromRGBO(245, 90, 0, 1),
                ),
                child: Center(
                  child: Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontFamily: 'Hellix',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        color: Color.fromRGBO(123, 123, 123, 1),
                        fontSize: 14.0,
                        fontFamily: 'Hellix',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    InkWell(
                      onTap: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        )
                      },
                      child: Text(
                        "Sign In.",
                        style: TextStyle(
                          color: Color.fromRGBO(245, 90, 0, 1),
                          fontSize: 14.0,
                          fontFamily: 'Hellix',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 35.0),
          ],
        ),
      ),
    );
  }
}
