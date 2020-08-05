import 'package:flutter/material.dart';
import 'package:rosario/components/misterios.dart';
import 'package:rosario/components/oraciones.dart';

class RosarioPage extends StatefulWidget {
  RosarioPage({Key key}) : super(key: key);

  @override
  _RosarioPageState createState() => _RosarioPageState();
}

class _RosarioPageState extends State<RosarioPage> {
  int _contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Santo Rosario"),
      ),
      body: ListView(
        children: <Widget>[
          getSantaCruz(),
          Divider(),
          getCredo(),
          Divider(),
          getAveMaria(" (3 veces)"),
          Divider(),
          getGloria(),
          Divider(),
          Misterio(),
          getAveMaria(""),
          Divider(),
          getGloria()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  Widget _getDecena() {
    return Card(
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('Ave Maria'),
              leading: Icon(Icons.replay_10),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Dios te salve, María, llena eres de gracia; el Señor es contigo. \nBendita Tú eres entre todas las mujeres, y bendito es el fruto de tu vientre, Jesús. \nSanta María, Madre de Dios, ruega por nosotros, pecadores,ahora y en la hora de nuestra muerte'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Icon(Icons.exposure_neg_1),
                  onPressed: () {
                    setState(() {
                      _contador -= 1;
                      _validarContador();
                    });
                  },
                ),
                Container(
                  child: Text("$_contador"),
                ),
                FlatButton(
                  child: Icon(Icons.exposure_plus_1),
                  onPressed: () {
                    setState(() {
                      _contador += 1;
                      _validarContador();
                    });
                  },
                )
              ],
            )
          ],
        ));
  }

  _validarContador() {
    if (_contador < 0) {
      _contador = 0;
    }
    if (_contador > 10) {
      _contador = 0;
    }
  }
}
