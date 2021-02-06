import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/src/pages/listaDatos.dart';

class InformacionUser extends StatelessWidget{
  final User user;
  
  InformacionUser({Key key, @required this.user}) : super(key: key);

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("Información", style: TextStyle(fontSize: 25.0)),
        backgroundColor: Color.fromRGBO(240, 94, 100, 1.0),
        leading: 
        RaisedButton(
          color: Color.fromRGBO(42, 100, 194, 1.0),
          textColor: Colors.white,
          child: Text("<",style: TextStyle(fontSize: 25)),
          shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.white, width: 2),
         ),
         onPressed: () {
               Navigator.pop(
               context,
               MaterialPageRoute(builder: (context) => ListaDatos()),
               );
         },
        )
      ),
      body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, 
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("INFORMACION DEL USUARIO:",style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold)),
                ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("\n\nNombre de usuario:",style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold, color: Colors.blue)),
                ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("\n")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(user.nameUser,style: TextStyle(fontSize: 24.0, fontStyle: FontStyle.italic)),
                ]
              ),
            ]
          ),
        ),
    );
  }
}