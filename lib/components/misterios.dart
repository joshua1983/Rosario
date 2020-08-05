import 'package:flutter/material.dart';
import 'package:rosario/providers/misterios_provider.dart';

class Misterio extends StatefulWidget {
  Misterio({Key key}) : super(key: key);

  @override
  _MisterioState createState() => _MisterioState();
}

class _MisterioState extends State<Misterio> {
  int _misterioCont = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _getMisterio(context, _misterioCont),
      ],
    );
  }

  _validarContador() {
    if (_misterioCont < 0) {
      _misterioCont = 1;
    }
    if (_misterioCont > 5) {
      _misterioCont = 1;
    }
  }

  Widget _getMisterio(BuildContext context, int misterioCont) {
    return FutureBuilder(
        future: misteriosProvider.cargarMiteriosGloriosos(),
        builder: (context, AsyncSnapshot<dynamic> misterio) {
          var titulo = _getTituloMisterio(misterio, misterioCont);
          var texto = _getTextoMisterio(misterio, misterioCont);
          return Card(
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.photo_album),
                    title: Text(titulo),
                    subtitle: Text(''),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Text(texto),
                  ),
                  Container(
                    child: Text('Amén'),
                    padding: EdgeInsets.all(10.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                        child: Icon(Icons.navigate_before),
                        onPressed: () {
                          setState(() {
                            _misterioCont -= 1;
                            _validarContador();
                          });
                        },
                      ),
                      Text('$_misterioCont º misterio'),
                      FlatButton(
                        child: Icon(Icons.navigate_next),
                        onPressed: () {
                          setState(() {
                            _misterioCont += 1;
                            _validarContador();
                          });
                        },
                      )
                    ],
                  )
                ],
              ));
        });
  }

  _getTextoMisterio(AsyncSnapshot misterio, int misterioCont) {
    return _getOpcionMisterio(misterio, misterioCont, 'texto');
  }

  _getTituloMisterio(AsyncSnapshot misterio, int misterioCont) {
    return _getOpcionMisterio(misterio, misterioCont, 'titulo');
  }

  _getOpcionMisterio(AsyncSnapshot misterio, int misterioCont, String opcion) {
    DateTime fechaHoy = DateTime.now();
    int dia = fechaHoy.weekday;
    // 1 = lunes 7 = domingo
    if (dia == 1 || dia == 6) {
      /// gozosos
      return misterio.data[0][_numeroLetra(misterioCont)][opcion];
    }
    if (dia == 2 || dia == 5) {
      // dolorosos
      return misterio.data[2][_numeroLetra(misterioCont)][opcion];
    }
    if (dia == 3 || dia == 7) {
      // gloriosos
      return misterio.data[3][_numeroLetra(misterioCont)][opcion];
    }
    if (dia == 4) {
      // luminosos
      return misterio.data[1][_numeroLetra(misterioCont)][opcion];
    }

    return "";
  }

  _numeroLetra(int indice) {
    switch (indice) {
      case 1:
        return "primero";
        break;
      case 2:
        return "segundo";
        break;
      case 3:
        return "tercero";
        break;
      case 4:
        return "cuarto";
        break;
      case 5:
        return "quinto";
        break;
      default:
        return "primero";
    }
  }
  
}
