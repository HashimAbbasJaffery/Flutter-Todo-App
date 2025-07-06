import 'package:flutter/widgets.dart';
import 'package:namer_app/widgets/Item.dart';
import 'package:namer_app/models/Item.dart' as model;

class Items extends StatefulWidget {
  @override
  
  Function(int) onClick;
  Function(int) deleteItem;
  String searchQuery;
  List<model.Item> items;

  Items({ required this.onClick, required this.deleteItem, required this.items, required this.searchQuery });
  State<Items> createState() => _ItemsState();
}


class _ItemsState extends State<Items> {

 

  
  @override
  Widget build(BuildContext context) {
  
    return Expanded(
        child: ListView(
          children: [
            ...widget.items.reversed.where((item) => item.name.toLowerCase().contains(widget.searchQuery.toLowerCase())).map((item) => Item(item: item, onClick: widget.onClick, deleteItem: widget.deleteItem,))
          ],
        ),
      );
    }
}