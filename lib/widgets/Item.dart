import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      color: Colors.white,
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.check_box, color: Color(0xFF5F52EE),),
            title: Text("Learn Flutter", style: TextStyle(
              decoration: TextDecoration.lineThrough
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
                onPressed: () => {},
                child: Icon(Icons.delete, color: Colors.white, size: 20,)
              ),
            ),
          ),
        ],
      ),
    );
  }
}