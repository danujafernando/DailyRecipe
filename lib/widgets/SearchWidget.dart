import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double filterWidth = 50;
    double width = MediaQuery.of(context).size.width;
    double searchWidth = width * 0.7;
    TextEditingController searchEditingController = TextEditingController();
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: searchWidth,
          decoration: BoxDecoration(
            color: Color.fromRGBO(43, 43, 43, 1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            autofocus: false,
            obscureText: false,
            keyboardType: TextInputType.text,
            controller: searchEditingController,
            decoration: InputDecoration(
              hintText: "Search for recipes",
              hintStyle: TextStyle(
                fontSize: 14,
                color: Color.fromRGBO(161, 161, 161, 1),
                fontFamily: 'Hellix',
              ),
              prefixIcon: Icon(
                Icons.search_outlined,
                color: Color.fromRGBO(161, 161, 161, 1),
              ),
              disabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
            ),
          ),
        ),
        GestureDetector(
          child: Image.asset(
            'assets/images/filter.png',
            height: 50,
            width: filterWidth,
            fit: BoxFit.cover,
          ),
          onTap: () => {
            print("Clicked"),
          },
        ),
      ],
    );
  }
}
