
import 'package:flutter/cupertino.dart';
import 'package:rosario/pages/home_page.dart';
import 'package:rosario/pages/misericordia_page.dart';
import 'package:rosario/pages/reproductor_page.dart';
import 'package:rosario/pages/rosario_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return  <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'reproductor': (BuildContext context) => ReproductorRosario(),
    'misericordia': (BuildContext context) => MisericordiaPage(),
    'rosario': (BuildContext context) => RosarioPage(),
  };
}