import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pantallainicio extends StatefulWidget {
  //Pantallainicio({Key? key}) : super(key: key);

  @override
  _nameState createState() => _nameState();
}

class _nameState extends State<Pantallainicio> {
  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(CupertinoIcons.barcode),
        )
      ],
      title: const Text(
        "Major news",
      ),
    );

    return Scaffold(
        appBar: appBar,
        body: Stack(children: <Widget>[
          Column(
            children: [
              Center(
                child: Text(
                  "noticias breves",
                ),
              ),
              Text("con claridad "),
              Image.asset("assets/foto1.png"),

              
              Row(children:<Widget> [MaterialButton(onPressed: (){},
              color:Colors.lightBlue,
              child:Text("iniciar sesion", style: TextStyle(color: Colors.white))),
              MaterialButton(onPressed: (){},
              color:Colors.lightBlue,
              child:Text("registrarse", style: TextStyle(color: Colors.white))),


              ],
              
              )
              
              


            ],
          ),
        ]),
        
        drawer: Drawer(),
        );
  }
}
