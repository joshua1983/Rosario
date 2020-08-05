import 'package:rosario/components/utilidades.dart';

class AudioDataMisterio {
  String nombreArchivo;
  String texto;
  String imagen;
  AudioDataMisterio(String imagen, String nombreArchivo, String texto) {
    this.nombreArchivo = nombreArchivo;
    this.texto = texto;
    this.imagen = imagen;
  }
}

List<AudioDataMisterio> getAudiosRosarioMisericordia() {
  Utilidades util = Utilidades();
  var aveMaria = AudioDataMisterio("assets/images/avemaria.jpg","audios/avemaria.mp3",
      "Dios te salve, María; llena eres de gracia; el Señor es contigo; bendita Tú eres entre todas las mujeres, y bendito es el fruto de tu vientre Jesús.  Santa María, Madre de Dios, ruega por nosotros, pecadores, ahora y en la hora de nuestra muerte.  Amén.");
  var jaculatoria = AudioDataMisterio("images/avemaria.jpg","audios/jaculatoria.mp3",
      "¡Oh! Jesús mío, perdona nuestros pecados, líbranos del fuego del infierno, lleva al cielo a todas las almas, especialmente a las más necesitadas de Tu misericordia. Amén.");

  List<AudioDataMisterio> data = [
    AudioDataMisterio("assets/images/padrenuestro.jpg","audios/inicio.mp3",
        "En el nombre del Padre, y del Hijo, y del Espíritu Santo. Amén."),
    AudioDataMisterio("assets/images/padrenuestro.jpg","audios/credo.mp3",
        "Creo en Dios Padre, Todopoderoso, Creador del cielo y de la tierra. Y en Jesucristo su único Hijo, Nuestro Señor; que fue concebido por obra y gracia del Espíritu Santo; y nació de Santa María Virgen; padeció bajo el poder de Poncio Pilato; fué crucificado, muerto y sepultado; descendió a los infiernos; al tercer día resucitó de entre los muertos; subió a los cielos y está sentado a la diestra de Dios Padre Todopoderoso; desde allí ha de venir a juzgar a los vivos y a los muertos. Creo en el Esprítu Santo, en la Santa Iglesia Católica; la comunión de los santos; el perdón de los pecados; la resurrección de la carne y la vida eterna. Amén."),
    AudioDataMisterio("assets/images/padrenuestro.jpg","audios/padre_nuestro.mp3",
        "Padre nuestro, que estás en el cielo, santificado sea tu Nombre; venga a nosotros tu reino; hágase tu voluntad, en la tierra como en el cielo. Danos hoy nuestro pan de cada día; perdona nuestras ofensas, como también nosotros perdonamos a los que nos ofenden; no nos dejes caer en tentación, y líbranos del mal. Amén"),
    aveMaria,
    aveMaria,
    aveMaria,
    AudioDataMisterio("images/gloria.jpg","audios/gloria.mp3",
        "Gloria al Padre, y al Hijo, y al Espíritu Santo. Como era en el principio, ahora y siempre, por los siglos de los siglos.  Amén.")
  ];

  data.addAll(util.getMisterios());

  data.add(AudioDataMisterio("images/avemaria.jpg","audios/salve.mp3",
      "Dios te salve, Reina y Madre de misericordia, vida, dulzura y esperanza nuestra; Dios te salve. A Ti llamamos los desterrados hijos de Eva; a Ti suspiramos gimiendo y llorando, en este valle de lágrimas. Ea, pues, Señora nuestra, vuelve a nosotros esos tus ojos misericordiosos; y después de este destierro muéstranos a Jesús, fruto bendito de tu vientre. ¡Oh clementísima, oh piadosa, oh dulce siempre Virgen María! Ruega por nosotros, Santa Madre de Dios, para que seamos dignos de alcanzar las promesas de Nuestro Señor Jesucristo.  Amén."));

  data.add(jaculatoria);

  return data;
}
