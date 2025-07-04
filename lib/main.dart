// import 'dart:nativewrappers/_internal/vm/lib/ffi_patch.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:namer_app/widgets/InputField.dart';
import 'package:namer_app/widgets/Item.dart';
import 'package:provider/provider.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color(0xFFEEEFF5),
  ));

  runApp(const MyApp());
}

/// Root widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppState>(
      create: (context) => AppState(),
      child: MaterialApp(
        title: 'Banking System',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          scaffoldBackgroundColor: Color(0xFFEEEFF5),
          useMaterial3: true,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue,
            brightness: Brightness.dark,
          ),
          useMaterial3: true,
        ),
        themeMode: ThemeMode.system,
        home: const HomeScreen(),
      ),
    );
  }
}

/// App-level state using Provider
class AppState extends ChangeNotifier {
  String message = "Hello Flutter!";

  void updateMessage(String newMessage) {
    message = newMessage;
    notifyListeners();
  }
}

/// Home screen widget
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final appState = context.watch<AppState>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFEEEFF5),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.menu),
              Container(
                height: 35,
                width: 35,
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(40),
                  child: Image.network("https://media.licdn.com/dms/image/v2/D4D03AQE6fxY6tUdKzA/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1710178806567?e=1756944000&v=beta&t=lyggU3cb4AlK1FxlusRneQZvs3eFazHkl_SBL8BtEJc"),
                ),
              )
            ],
          )
        ),
        body: Column(
          children: [
            InputField(),
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
            Expanded(
              child: ListView(
                children: [
                  Item(),
                  Item(),
                  Item(),
                  Item(),
                  Item(),
                  Item(),
                  Item(),
                  Item(),
                  Item(),
                  Item(),
                  Item()
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
