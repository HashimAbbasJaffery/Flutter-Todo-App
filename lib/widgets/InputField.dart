import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            prefixIcon: Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 5, 0),
              child: Icon(Icons.search, size: 20,),
            ),
            prefixIconConstraints: BoxConstraints(
              maxHeight: 20,
              minWidth: 25
            ),
            hint: Text("Search"),
            border: InputBorder.none
          ),
        )
      );
  }
}