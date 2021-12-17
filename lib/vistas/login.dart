// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:homepage/home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _textController = TextEditingController();
  final _textController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
      title: const Text(
        "Major news",
      ),
    );

    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              actions: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.barcode),
                )
              ],
              title: const Text(
                "Major news",
              ),
            ),
            body: Center(
                child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Column(children: [
                      Text(
                        "Inicia sesion",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      _textfieldcorreo(),
                      SizedBox(
                        height: 15.0,
                      ),
                      _textfieldcontrasena(),
                      CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          title: Text('Recordar datos para iniciar sesion'),
                          value: false,
                          onChanged: (bool? value) {}),
                      SizedBox(
                        height: 30.0,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            if (_textController.text.isEmpty ||
                                _textController2.text.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      backgroundColor: Colors.red,
                                      content: Text('Value can not be empty')));
                            } else {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Home()));
                            }
                          },
                          child: Text(
                            "Ingresar",
                          )),
                      SizedBox(
                        height: 30.0,
                      ),
                      recuperarpass(),
                    ])))));
  }

  Widget _textfieldcorreo() {
    {
      return Container(
          color: Colors.white,
          margin: EdgeInsets.symmetric(horizontal: 30.0),
          child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0)),
                  prefixIcon: Icon(Icons.person_outline),
                  hintText: 'ingrese su email')));
    }
  }

  Widget _textfieldcontrasena() {
    return Container(
        color: Colors.white,
        margin: EdgeInsets.symmetric(horizontal: 30.0),
        child: TextField(
          controller: _textController2,
          obscureText: true,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 2.0),
              ),
              hintText: 'ingrese password'),
        ));
  }

  recuperarpass() {
    return (Container(
        color: Colors.white,
        margin: EdgeInsets.symmetric(horizontal: 30.0),
        child: Text(
          "Has olvidado tu contrasena",
          style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 14,
              fontWeight: FontWeight.bold),
        )));
  }
}
