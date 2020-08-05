import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:rosario/components/utilidades.dart';
import 'package:rosario/data/audio.dart';

class MusicPlayer extends StatefulWidget {
  @override
  _MusicPlayerState createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  final nombreArchivo = "audios/inicio.mp3";
  final nombreCancio = "La señal de la cruz";
  int indiceCancion = 0;
  String textoRosario = "";

  AudioPlayer audioPlayer;
  AudioCache audioCache;

  Duration duracion = Duration();
  Duration posicion = Duration();

  List<AudioDataMisterio> secuenciaRosario = getAudiosRosarioMisericordia();

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
    audioCache = AudioCache(fixedPlayer: audioPlayer);
    audioPlayer.onAudioPositionChanged
        .listen((Duration p) => setState(() => posicion = p));
    audioPlayer.onDurationChanged
        .listen(((Duration p) => setState(() => duracion = p)));
    audioPlayer.onPlayerCompletion.listen((event) {
      alCompletarCancion();
    });
  }

  @override
  void dispose() {
    audioPlayer.stop();
    super.dispose();
  }

  alCompletarCancion() {
    setState(() {
      indiceCancion = indiceCancion + 1;
      textoRosario = secuenciaRosario[indiceCancion].texto;
    });
    Future.delayed(Duration(seconds: 1), () => {comenzarReproduccion()});
  }

  comenzarReproduccion() {
    if (indiceCancion <= secuenciaRosario.length) {
      audioCache.play(getNombreArchivo());
    } else {
      audioPlayer.stop();
    }
  }

  String getNombreArchivo() {
    return secuenciaRosario[indiceCancion].nombreArchivo;
  }

  String getImageAsset() {
    return secuenciaRosario[indiceCancion].imagen;
  }

  @override
  Widget build(BuildContext context) {
    double volumen = 1;
    double volumenActual = 1;

    List<Widget> controlesAudio() {
      List<Widget> controles = [
        crearIconoBoton(Icons.play_arrow, Colors.green, () {
          comenzarReproduccion();
        }),
        crearIconoBoton(Icons.pause, Colors.green, () {
          audioPlayer.pause();
        }),
        crearIconoBoton(Icons.stop, Colors.grey, () {
          audioPlayer.stop();
        }),
        crearIconoBoton(Icons.volume_up, Colors.green, () {
          if (volumen < 1) {
            volumen += 0.1;
            audioPlayer.setVolume(volumen);
          }
        }),
        crearIconoBoton(Icons.volume_down, Colors.red, () {
          if (volumen > 0) {
            volumen -= 0.1;
            audioPlayer.setVolume(volumen);
          }
        }),
        crearIconoBoton(Icons.volume_mute, Colors.red, () {
          if (volumen != 0) {
            volumenActual = volumen;
            volumen = 0;
            audioPlayer.setVolume(volumen);
          } else {
            audioPlayer.setVolume(volumenActual);
          }
        })
      ];
      return controles;
    }

    return Scaffold(
        appBar: AppBar(
          title: Text("ROSARIO", style: TextStyle(fontSize: 20)),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Opacity(
              opacity: 0.4,
              child: Container(
                child: Text(
                  textoRosario,
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.justify,
                ),
                padding: EdgeInsets.all(5.0),
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Row(children: controlesAudio()),
                  Slider(
                    value: posicion.inSeconds.toDouble(),
                    max: duracion.inSeconds.toDouble(),
                    onChanged: (double segundos) {
                      setState(() {
                        audioPlayer.seek(Duration(seconds: segundos.toInt()));
                      });
                    },
                  )
                ],
              ),
            )
          ],
        )));
  }

  Widget crearIconoBoton(IconData icon, Color color, VoidCallback onPressed) {
    return IconButton(
        icon: Icon(icon), iconSize: 35, color: color, onPressed: onPressed);
  }
}
