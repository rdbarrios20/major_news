import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:homepage/vistas/registrar.dart';

import 'login.dart';

class Inicio2 extends StatelessWidget {
  const Inicio2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child:
          Column(mainAxisSize: MainAxisSize.max, children: [

            Text("Major News", style: TextStyle(fontSize: 30,color: Colors.black,fontWeight:FontWeight.bold),),
            Text("Nunca Fue tan facil leer y publicar noticias",
             style: TextStyle(fontSize: 24,color: Colors.black87,),),

             Expanded
             
             (flex: 2, child:Image.asset(
                  'assets/foto1.png',
                  width: 300,
                  height: 240,
                  fit: BoxFit.fitHeight,
                ), ),

              
             Expanded(flex:1 ,
             
             child:
              Row(
               
               mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                             

               ElevatedButton(

                 onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                 },
               child:Text("login",) ),

                ElevatedButton(onPressed: ()
                {
                  Navigator.push(context,
                 MaterialPageRoute(builder: (context)=>Registrar()));}, 
               child:Text("registrarse",) ),



             ],)
              )

            

          ],)
          ,



        )



      ));
   
  }
}
