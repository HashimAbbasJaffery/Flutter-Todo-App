import 'package:flutter/material.dart';
import 'package:namer_app/models/Item.dart' as model;

class Item extends StatelessWidget {
  model.Item item;
  Function(int) onClick;
  Function(int) deleteItem;
  Item({required this.item, required this.onClick, required this.deleteItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      color: Colors.white,
      child: GestureDetector(
        onTap: () => {
          onClick(item.id)
        },
        child: Column(
          children: [
            ListTile(
              leading: Icon(item.isCompleted ? Icons.check_box : Icons.check_box_outline_blank, color: Color(0xFF5F52EE),),
              title: Text(item.name, style: TextStyle(
                decoration: item.isCompleted ? TextDecoration.lineThrough : TextDecoration.none
              )),
              trailing: SizedBox(
                width: 40,
                height: 35,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      )
                    ),
                    backgroundColor: WidgetStateProperty.all<Color>(Color(0xFFDA4040)),
                    padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
                  ),
                  onPressed: () => {
                    deleteItem(item.id)
                  },
                  child: Icon(Icons.delete, color: Colors.white, size: 20,)
                ),
              ),
            ),
          ],
        ),
      ) 
    );
  }
}