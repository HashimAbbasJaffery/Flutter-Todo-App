import 'package:flutter/widgets.dart';
import 'package:namer_app/widgets/AddItem.dart';
import 'package:namer_app/widgets/InputField.dart';
import 'package:namer_app/widgets/Items.dart';
import 'package:namer_app/models/Item.dart';

class Home extends StatefulWidget {

  String searchQuery = "";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  
  List<Item> items = [
    Item(id: 1, isCompleted: false, name: "Learn Flutter"),
    Item(id: 2, isCompleted: false, name: "Learn Django"),
  ];

  void onClick(id) {
    setState(() {
      items.forEach((item) => {
        if(item.id == id) {
          item.isCompleted  = !item.isCompleted
        }
      });
    });
  }

  void deleteItem(id) {
    setState(() {
      items.removeWhere((item) => item.id == id);
    });
  }

  void addItem(String item) {
    setState(() {
      if(item.isNotEmpty) {
        items.add(Item(id: items.length + 1, name: item, isCompleted: false));
      }
    });
  }

  void onChanged(String text) {
    setState(() {
      widget.searchQuery = text;
    });
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
            InputField(onChanged: onChanged,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.00, vertical: 5),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  style: TextStyle(
                      fontSize: 25.00,
                      fontWeight: FontWeight.bold
                  ),
                  "All ToDos",
                ),
              ),
            ),
            Items(onClick: onClick, deleteItem: deleteItem, items: items, searchQuery: widget.searchQuery,),
            AddItem(addItem: addItem,)
      ],
    );
  }
}