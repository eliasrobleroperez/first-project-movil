import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/listaDatos.dart';
import 'package:flutter_application_1/src/pages/new_page.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Login extends StatelessWidget{
  String valorUser = "";
  String valorPassword = "";
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login", style: TextStyle(fontSize: 25.0)),
        backgroundColor: Color.fromRGBO(240, 94, 100, 1.0),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        color: Color.fromRGBO(249, 246, 239, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: TextField(
                      style: TextStyle(fontSize: 20.0),
                      onChanged: (texto){
                        valorUser = texto;
                      },
                      obscureText: false,
                      decoration: InputDecoration(
                      icon: Icon(Icons.supervised_user_circle),
                      labelText: 'Usuario',
                      ),
                    ),width: MediaQuery.of(context).size.width * 0.8,
                  ),
                ],
              ),
              SizedBox(
                height : 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: TextField(
                      style: TextStyle(fontSize: 20.0),
                      onChanged: (texto){
                        valorPassword = texto;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                      icon: Icon(Icons.vpn_key),
                      labelText: 'Password',
                      ),
                    ),width: MediaQuery.of(context).size.width * 0.8,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(24),
                      padding: EdgeInsets.only(top: 30),
                    child: RaisedButton(
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      color: Color.fromRGBO(42, 100, 194, 1.0),
                      textColor: Colors.white,
                      child: Text("Iniciar sesión", style: TextStyle(fontSize: 19)),
                      onPressed: (){
                        if(valorUser.isEmpty || valorPassword.isEmpty){
                          Fluttertoast.showToast(
                          msg: 'Ingrese los datos solicitados',  
                          toastLength: Toast.LENGTH_SHORT,  
                          gravity: ToastGravity.BOTTOM,  
                          timeInSecForIos: 1,  
                          backgroundColor: Colors.red,  
                          textColor: Colors.white,
                          fontSize: 20.0
                        ); 
                        }
                        else{
                          Fluttertoast.showToast(
                          msg: '-Usuario: $valorUser\n-Contraseña: $valorPassword',  
                          toastLength: Toast.LENGTH_SHORT,  
                          gravity: ToastGravity.BOTTOM,  
                          timeInSecForIos: 1,  
                          backgroundColor: Colors.black,  
                          textColor: Colors.white,
                          fontSize: 20.0
                        );
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ListaDatos()),
                        ); 
                        }
                      },
                      elevation: 10,
                    ),width: MediaQuery.of(context).size.width * 0.5,
                  )
                ],
              ),            
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.only(bottom: 15),
          child: Row(
            children: <Widget>[
              Text("          "),
              RaisedButton(
          color: Color.fromRGBO(42, 100, 194, 1.0),
             textColor: Colors.white,
             child: Text("Regresar", style: TextStyle(fontSize: 20)),
             onPressed: () {
               Navigator.pop(
               context,
               MaterialPageRoute(builder: (context) => NewPage()),
               );
              },
          ),
            ]
          ),
        ),
        )
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  
}