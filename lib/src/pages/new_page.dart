import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/Login.dart';

class NewPage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(249, 246, 239, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget> [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 40),
                  child: Image.asset("assets/paisaje.jpg", width:300, height: 300),
                )
              ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 50),
                  child: Text(
                    '"En cada paseo por la naturaleza uno recibe\nmucho más de lo que está buscando"\n\n-Jonh Muir', 
                    style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 70),
                  child: RaisedButton(
                      color: Color.fromRGBO(42, 100, 194, 1.0),
                      textColor: Colors.white,
                      child: Text("Continuar", style: TextStyle(fontSize: 20)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                  ),width: MediaQuery.of(context).size.width * 0.5,
                )
              ]
            )
          ],

        ),
      ),
    );
  }
}
