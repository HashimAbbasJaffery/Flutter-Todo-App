import 'package:flutter/material.dart';

class AddItem extends StatelessWidget {
  final _controller = TextEditingController();
  Function(String) addItem;
  AddItem({ required this.addItem });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 3.00,
                      spreadRadius: 3.00,
                      blurStyle: BlurStyle.outer
                    )
                  ]
                ),
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                height: 60.00,
                width: double.infinity,
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: "Add a new TODO item",
                    border: InputBorder.none
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: SizedBox(
                height: 60,
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
                    addItem(_controller.text),
                    _controller.clear()
                  },
                  child: Text(
                    "+",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.00
                    ),
                  )
                ),
              ),
            ),
          ],
        )
      ]
    );
  }
}