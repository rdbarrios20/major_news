import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:homepage/vistas/darkmode.dart';
import 'package:homepage/vistas/mispost.dart';
import 'package:homepage/vistas/principal.dart';
import 'package:homepage/vistas/chatpage.dart';
import 'package:homepage/vistas/localizacion.dart';



class Home extends StatefulWidget {
  // Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var selectorvista = 0;
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

    BottomNavigationBar bottomNavigationBar = BottomNavigationBar(
        onTap: (index) {
          setState(() {
            selectorvista = index;
          });
        },
        currentIndex: selectorvista,
        items: [
          BottomNavigationBarItem(
            label: (""),
            icon: Icon(CupertinoIcons.chat_bubble_2,
                color:
                    selectorvista == 0 ? Colors.blue[400] : Colors.grey[400]),
          ),
          BottomNavigationBarItem(
            label: (""),
            icon: Icon(CupertinoIcons.book,
                color:
                    selectorvista == 1 ? Colors.blue[400] : Colors.grey[400]),
          ),
          BottomNavigationBarItem(
            label: (""),
            icon: Icon(CupertinoIcons.sun_max,
                color:
                    selectorvista == 2 ? Colors.blue[400] : Colors.grey[400]),
          ),
          BottomNavigationBarItem(
            label: (""),
            icon: Icon(CupertinoIcons.location_solid,
                color:
                    selectorvista == 3 ? Colors.blue[400] : Colors.grey[400]),
          ),
          BottomNavigationBarItem(
            label: (""),
            icon: Icon(CupertinoIcons.person,
                color:
                    selectorvista == 4 ? Colors.blue[400] : Colors.grey[400]),
          ),
        ]);

    List<Widget> listScreens = <Widget>[
      Chatpage(),
      Principal(),
      Darkmode(),
      Localizacion(),
      Mispost()
    ];

    return Scaffold(
      appBar: appBar,
      body: 
      listScreens.elementAt(selectorvista),
      bottomNavigationBar: bottomNavigationBar,floatingActionButton: FloatingActionButton(
        onPressed:(){} ,child: selectorvista==0 ? Icon(CupertinoIcons.plus)
        : Icon(CupertinoIcons.chat_bubble)),
    );
  }
}
