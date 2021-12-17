import 'package:flutter/material.dart';
import 'package:homepage/home.dart';
import 'package:homepage/vistas/inicio2.dart';
import 'package:homepage/vistas/login.dart';
import 'package:homepage/vistas/pantallainicio.dart';
import 'package:homepage/vistas/registrar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Major News',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Colors.white,
            iconTheme:
                const IconThemeData(color: Color.fromRGBO(56, 161, 243, 1)),
            floatingActionButtonTheme: const FloatingActionButtonThemeData(
                backgroundColor: Color.fromRGBO(56, 161, 243, 1))
            //primarySwatch: Colors.blue,
            ),
        //   home: Home(), //registro y login
        home: Inicio2());

    /// home:Pantallainicio());
  }
}
