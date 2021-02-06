import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/Login.dart';
import 'package:flutter_application_1/src/pages/informacionUser.dart';

class User {
  final String nameUser;
  final String description;

  User(this.nameUser, this.description);
}


class ListaDatos extends StatelessWidget{

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("Lista de usuarios", style: TextStyle(fontSize: 22.0)),
        backgroundColor: Color.fromRGBO(240, 94, 100, 1.0),
        leading: 
        RaisedButton(
          color: Color.fromRGBO(42, 100, 194, 1.0),
          textColor: Colors.white,
          child: Text("<",style: TextStyle(fontSize: 35)),
          shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.white, width: 2),
         ),
         onPressed: () {
               Navigator.pop(
               context,
               MaterialPageRoute(builder: (context) => Login()),
               );
         },
        )
      ),
      body: new ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(45.0),
              children: [
                _buildItem(context,'eliasrpz', 'Estudiante'),
                _buildItem(context,'hugoruiz.perez', 'Estudiante'),
                _buildItem(context,'cdanielcaballero', 'Estudiante'),
                _buildItem(context,'marcelinodiaz13', 'Estudiante'),
                _buildItem(context,'robleropz', 'Estudiante'),
                _buildItem(context,'matuzalvarado','Estudiante'),
                _buildItem(context,'martin_alejandro23','Estudiante'),
                _buildItem(context,'eliasrob14','Estudiante'),
                _buildItem(context,'rgOvando_','Estudiante'),
                _buildItem(context,'clauvex','Estudiante'),
                _buildItem(context,'e.roblero_','Estudiante'),
                _buildItem(context,'1234user','Estudiante'),
                _buildItem(context,'admin','Estudiante'),
                _buildItem(context,'rodriguez_perez','Estudiante'),
                _buildItem(context,'cruz.caballero22','Estudiante'),
                _buildItem(context,'hndez_vazquez','Estudiante'),
                _buildItem(context,'ids_cdiaz','Estudiante'),
                _buildItem(context,'sndez24_rob','Estudiante'),
                _buildItem(context,'krla.alejandra','Estudiante'),
                _buildItem(context,'gonzalez_anthony','Estudiante'),
              ]
      ),
      
    );
  }
}

Widget _buildItem(BuildContext context, String textTitle, String description) {
  return new ListTile(
      title: new Text(textTitle,style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold)),
      subtitle: new Text(description),
      leading: new Icon(Icons.supervised_user_circle_rounded),
      onTap: (){
        User(textTitle, description);
        print("Usuario seleccionado: "+textTitle);
        Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InformacionUser(user: User(textTitle, description)),
                ),
        );
      },
  );
}
