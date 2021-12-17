// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'login.dart';

class Registrar extends StatelessWidget {
  const Registrar({Key? key}) : super(key: key);

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
                        "Crear cuenta",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 50.0,
                      ),

                      _nombre,
                      SizedBox(
                        height: 15.0,
                      ),
                      _textfieldcorreo,
                      SizedBox(
                        height: 15.0,
                      ),
                     _textfieldcontrasena,

                       SizedBox(
                        height: 15.0,
                      ),
                     _textfieldrcontrasena,
                     
                      CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text('Acepto los teminos y condiciones'),
                      value: false,
                      onChanged: (bool? value) {
                      
                       }),

                         SizedBox(
                        height: 30.0,
                      ),

                ElevatedButton( onPressed: (){

                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                }, 
               child:Text("Registrar",) ),


                              
                      
                      


                    ])))));
  }


}




   Widget get _textfieldrcontrasena {
    return Container(
        color: Colors.white,
        margin: EdgeInsets.symmetric(horizontal: 30.0),
        child: TextField(obscureText: true,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                  
                 hintText: 'ingrese password' ),
        ));
  }


Widget get _textfieldcontrasena {
    return Container(
        color: Colors.white,
        margin: EdgeInsets.symmetric(horizontal: 30.0),
        child: TextField(obscureText: true,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                  
                 hintText: 'repetir password' ),
        ));
  }


  Widget get _textfieldcorreo {
    {
      return Container(
          color: Colors.white,
          margin: EdgeInsets.symmetric(horizontal: 30.0),
          child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0)),
                  prefixIcon: Icon(Icons.person_outline), 
                  hintText: 'ingrese su email')));
    }
  }



  Widget get _nombre {
    {
      return Container(
          color: Colors.white,
          margin: EdgeInsets.symmetric(horizontal: 30.0),
          child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0)),
                  prefixIcon: Icon(Icons.person_outline), 
                  hintText: 'ingrese su nombre')));
    }
  }






