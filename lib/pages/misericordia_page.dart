import 'package:flutter/material.dart';
import 'package:rosario/components/oraciones.dart';

class MisericordiaPage extends StatefulWidget {
  MisericordiaPage({Key key}) : super(key: key);

  @override
  _MisericordiaPageState createState() => _MisericordiaPageState();
}

class _MisericordiaPageState extends State<MisericordiaPage> {
  int _contador = 0;
  int _contadorFinal = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Misericordia"),
      ),
      body: ListView(
        children: <Widget>[
          getOracionInicalRosarioMisericordia(),
          Divider(),
          getPadreNuestro(),
          Divider(),
          getAveMaria(""),
          Divider(),
          getCredo(),
          Divider(),
          _getOfrecimiento(),
          Divider(),
          _getDecena(),
          Divider(),
          _getFinalRosario(),
          Divider(),
          _oracionFinal(),
          Divider(),
          _bendicionFinal(),
          Divider()
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

  Widget _getOfrecimiento() {
    return Card(
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('Ofrecimiento'),
              leading: Icon(Icons.local_florist),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                  'Padre Eterno, te ofrezco el Cuerpo, la Sangre, el Alma y la Divinidad de Tu Amadísimo Hijo, nuestro Señor Jesucristo, como propiciación de nuestros pecados y los del mundo entero'),
            )
          ],
        ));
  }

  Widget _getDecena() {
    return Card(
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('10 veces'),
              leading: Icon(Icons.replay_10),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                  'Por su dolorosa pasión, ten misericordia de nosotros y del mundo entero'),
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

  Widget _getFinalRosario() {
    return Card(
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('Final del rosario'),
              leading: Icon(Icons.replay),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                  'Santo Dios, Santo Fuerte, Santo Inmortal, ten piedad de nosotros y del mundo entero.'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Icon(Icons.exposure_neg_1),
                  onPressed: () {
                    setState(() {
                      _contadorFinal -= 1;
                      _validarContadorFinal();
                    });
                  },
                ),
                Container(
                  child: Text("$_contadorFinal"),
                ),
                FlatButton(
                  child: Icon(Icons.exposure_plus_1),
                  onPressed: () {
                    setState(() {
                      _contadorFinal += 1;
                      _validarContadorFinal();
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

  _validarContadorFinal() {
    if (_contadorFinal < 0) {
      _contadorFinal = 0;
    }
    if (_contadorFinal > 3) {
      _contadorFinal = 0;
    }
  }

  Widget _oracionFinal() {
    return Card(
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('Oracion final'),
              subtitle: Text('opcional'),
              leading: Icon(Icons.sentiment_satisfied),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                  '¡Oh Sangre y Agua que brotaste del Corazón de Jesús, como una Fuente de Misericordia para nosotros, en Tí confío!.'),
            )
          ],
        ));
  }

  Widget _bendicionFinal() {
    return Card(
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('Bendicion final'),
              leading: Icon(Icons.sentiment_satisfied),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                  'Te pedimos que derrames sobre nosotros tu bendición, en el nombre del Padre, del Hijo y del Espíritu Santo.'),
            ),
            Container(
              child: Text('Amén'),
              padding: EdgeInsets.all(10.0),
            )
          ],
        ));
  }
}
