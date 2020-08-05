import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MisteriosProvider {
  List<dynamic> gozosos = [];

  _MisteriosProvider();

  Future<List<dynamic>> cargarMiteriosGozosos() async {
    final respuesta = await rootBundle.loadString('data/misterios.json');

    Map dataMap = json.decode(respuesta);
    gozosos = dataMap['gozosos'];
    return gozosos;
  }

  Future<List<dynamic>> cargarMiteriosLuminosos() async {
    final respuesta = await rootBundle.loadString('data/misterios.json');

    Map dataMap = json.decode(respuesta);
    gozosos = dataMap['gozosos'];
    return gozosos;
  }

  Future<List<dynamic>> cargarMiteriosDolorosos() async {
    final respuesta = await rootBundle.loadString('data/misterios.json');

    Map dataMap = json.decode(respuesta);
    gozosos = dataMap['gozosos'];
    return gozosos;
  }

  Future<List<dynamic>> cargarMiteriosGloriosos() async {
    final respuesta = await rootBundle.loadString('data/misterios.json');

    Map dataMap = json.decode(respuesta);
    gozosos = dataMap['gozosos'];
    return gozosos;
  }
}

final misteriosProvider = new _MisteriosProvider();