import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:rosario/components/player.dart';

class ReproductorRosario extends StatefulWidget {
  ReproductorRosario({Key key}) : super(key: key);

  @override
  _ReproductorRosarioState createState() => _ReproductorRosarioState();
}

class _ReproductorRosarioState extends State<ReproductorRosario> {
  @override
  Widget build(BuildContext context) {
    return MusicPlayer();
  }
}
