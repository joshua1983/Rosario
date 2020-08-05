import 'package:flutter/material.dart';

Widget getTarjetaOracion(String texto, String titulo, String subtitulo) {
  return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text(titulo),
            subtitle: Text(subtitulo),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text(texto),
          ),
          Container(
            child: Text('Amén'),
            padding: EdgeInsets.all(10.0),
          )
        ],
      ));
}

Widget getOracionInicalRosarioMisericordia(){
  return getTarjetaOracion(
      'Expiraste, Jesús, pero la fuente de vida brotó para las almas y el mar de misericordia se abrió para el mundo entero. ¡Oh fuente de vida, insondable Misericordia Divina, abarca al mundo entero y derramate sobre nosotros!',
      'Oracion Inicial',
      '');
}

Widget getPadreNuestro() {
  return getTarjetaOracion(
      'Padre nuestro, que estás en el cielo, santificado sea tu Nombre;venga a nosotros tu reino; hágase tu voluntad en la tierra como en el cielo.\nDanos hoy nuestro pan de cada día; perdona nuestras ofensas, como también nosotros perdonamos a los que nos ofenden; no nos dejes caer en la tentación, y líbranos del mal.',
      'Padre Nuestro',
      '');
}

Widget getAveMaria(String titulo) {

return getTarjetaOracion(
      'Dios te salve, María, llena eres de gracia; el Señor es contigo. \nBendita Tú eres entre todas las mujeres, y bendito es el fruto de tu vientre, Jesús. \nSanta María, Madre de Dios, ruega por nosotros, pecadores,ahora y en la hora de nuestra muerte',
      'Ave Maria ' + titulo,
      '');
}

Widget getCredo() {
  return getTarjetaOracion(
      'Creo en Dios, Padre Todopoderoso, Creador del cielo y de la tierra. \n\nCreo en Jesucristo, su único Hijo, Nuestro Señor, que fue concebido por obra y gracia del Espíritu Santo, nació de Santa María Virgen, padeció bajo el poder de Poncio Pilato fue crucificado, muerto y sepultado, descendió a los infiernos, al tercer día resucitó de entre los muertos,subió a los cielos y está sentado a la derecha de Dios, Padre todopoderoso. \n\nDesde allí ha de venir a juzgar a vivos y muertos. \n\nCreo en el Espíritu Santo, la santa Iglesia católica, la comunión de los santos, el perdón de los pecados, la resurrección de la carne y la vida eterna.',
      'Credo',
      '');
}

Widget getSantaCruz() {
  return getTarjetaOracion(
      'Por la señal de la Santa Cruz, de nuestros enemigos, libranos Señor DIOS nuestro. En el Nombre del Padre, del Hijo, y del Espiritu Santo.',
      'Señal de la Cruz',
      '');
}

Widget getGloria() {
   return getTarjetaOracion(
      'Gloria al Padre y al Hijo y al Espíritu Santo. Como era en un principio ahora y siempre por los siglos de los siglos.',
      'Gloria',
      '');
}
