import 'package:rosario/data/audio.dart';

class Utilidades {
  var aveMaria = AudioDataMisterio("assets/images/avemaria.jpg","audios/avemaria.mp3",
      "Dios te salve, María; llena eres de gracia; el Señor es contigo; bendita Tú eres entre todas las mujeres, y bendito es el fruto de tu vientre Jesús.  Santa María, Madre de Dios, ruega por nosotros, pecadores, ahora y en la hora de nuestra muerte.  Amén.");
  var jaculatoria = AudioDataMisterio("assets/images/avemaria.jpg","audios/jaculatoria.mp3",
      "¡Oh! Jesús mío, perdona nuestros pecados, líbranos del fuego del infierno, lleva al cielo a todas las almas, especialmente a las más necesitadas de Tu misericordia. Amén.");

  var padreNuestro = AudioDataMisterio("assets/images/padrenuestro.jpg","audios/padre_nuestro.mp3",
      "Padre nuestro, que estás en el cielo, santificado sea tu Nombre; venga a nosotros tu reino; hágase tu voluntad, en la tierra como en el cielo. Danos hoy nuestro pan de cada día; perdona nuestras ofensas, como también nosotros perdonamos a los que nos ofenden; no nos dejes caer en tentación, y líbranos del mal. Amén");

  var gloria = AudioDataMisterio("assets/images/gloria.jpg","audios/gloria.mp3",
      "Gloria al Padre, y al Hijo, y al Espíritu Santo. Como era en el principio, ahora y siempre, por los siglos de los siglos.  Amén.");

  String diaSemana() {
    DateTime date = DateTime.now();
    int dia = date.weekday;
    switch (dia) {
      case 1:
      case 6:
        return "Misterios Gozosos";
        break;
      case 2:
      case 5:
        return "Misterios Dolorosos";
        break;
      case 4:
        return "Misterios Luminosos";
        break;
      case 3:
      case 7:
        return "Misterios Gloriosos";
        break;
    }
    return "";
  }

  List<AudioDataMisterio> getMisterios() {
    DateTime date = DateTime.now();
    int dia = date.weekday;
    switch (dia) {
      case 1:
      case 6:
        return getMisteriosGozosos();
        break;
      case 2:
      case 5:
        return getMisteriosDolorosos();
        break;
      case 4:
        return getMisteriosLuminosos();
        break;
      case 3:
      case 7:
        return getMisteriosGloriosos();
        break;
    }
    return new List<AudioDataMisterio>();
  }

  List<AudioDataMisterio> getMisteriosGozosos() {
    List<AudioDataMisterio> retorno = [
      AudioDataMisterio("assets/images/gozosos/m1.jpg","audios/gozosos/m1.mp3",
          "Y habiendo entrado el Angel donde estaba María le dijo:'Dios te salve, llena de gracia, el Señor es contigo; bendita tú entre las mujeres.'  Y cuando ella esto oyó, se turbó con las palabras de él, y pensaba qué salutación sería ésta. "),
      padreNuestro,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      gloria,
      AudioDataMisterio("assets/images/gozosos/m2.jpg","audios/gozosos/m2.mp3",
          "Y en aquellos días, levantándose María, fue con prisa a la montaña, a una ciudad de Judá,  y entró en casa de Zacarías,y saludó a Isabel. Y aconteció que cuando Isabel oyó la salutación de María, la criatura dio saltos en el vientre. Y fue llena Isabel del Espíritu Santo"),
      padreNuestro,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      gloria,
      AudioDataMisterio("assets/images/gozosos/m3.jpg","audios/gozosos/m3.mp3",
          "Y sucedió que, hallándose allí, le llegó la hora del parto, y dio a luz a su hijo primogénito, y envolvióle en pañales, y recostóle en un pesebre, porque no había lugar para ellos en el mesón"),
      padreNuestro,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      gloria,
      AudioDataMisterio("assets/images/gozosos/m4.jpg","audios/gozosos/m4.mp3",
          "Simeón les bendijo y dijo a María, su madre: 'Éste está puesto para caída y elevación de muchos en Israel, y para ser señal de contradicción -¡y a ti misma una espada te atravesará el alma! - a fin de que queden al descubierto las intenciones de muchos corazones"),
      padreNuestro,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      gloria,
      AudioDataMisterio("assets/images/gozosos/m5.jpg","audios/gozosos/m5.mp3",
          "Después de tres días, ellos lo hallaron en el Templo. Él estaba sentado en medio de los Doctores de la Ley."),
    ];
    return retorno;
  }

  List<AudioDataMisterio> getMisteriosDolorosos() {
    List<AudioDataMisterio> retorno = [
      AudioDataMisterio("assets/images/dolorosos/m1.jpg","audios/dolorosos/m1.mp3",
          "Entonces les dice: ‘Mi alma está triste hasta el punto de morir; quedaos aquí  y velad conmigo"),
      padreNuestro,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      gloria,
      AudioDataMisterio("assets/images/dolorosos/m2.jpg","audios/dolorosos/m2.mp3",
          "Pilato entonces tomó a Jesús y mandó azotarle."),
      padreNuestro,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      gloria,
      AudioDataMisterio("assets/images/dolorosos/m3.jpg","audios/dolorosos/m3.mp3",
          "y, trenzando una corona de espinas, se la pusieron sobre su cabeza, y en su mano derecha una caña; y doblando la rodilla delante de él, le hacían burla diciendo: '¡Salve, Rey de los judíos'"),
      padreNuestro,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      gloria,
      AudioDataMisterio("assets/images/dolorosos/m4.jpg","audios/dolorosos/m4.mp3",
          "y Él, cargando con su cruz, salió hacia el lugar llamado Calvario, que en hebreo se llama Gólgota. "),
      padreNuestro,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      gloria,
      AudioDataMisterio("assets/images/dolorosos/m5.jpg","audios/dolorosos/m5.mp3",
          "y Jesús, dando un fuerte grito, dijo: 'Padre, en tus manos encomiendo mi espíritu» y, dicho esto, expiró'. "),
    ];
    return retorno;
  }

  List<AudioDataMisterio> getMisteriosLuminosos() {
    List<AudioDataMisterio> retorno = [
      AudioDataMisterio("assets/images/luminosos/m1.jpg","audios/luminosos/m1.mp3",
          "Bautizado Jesús, salió luego del agua; y en esto se abrieron los cielos y vio al Espíritu de Dios que bajaba en forma de paloma y venía sobre él. Y una voz que salía de los cielos decía: 'Este es mi Hijo amado, en quien me complazco'."),
      padreNuestro,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      gloria,
      AudioDataMisterio("assets/images/luminosos/m2.jpg","audios/luminosos/m2.mp3",
          "Como faltara vino, porque se había acabado el vino de la boda, le dice a Jesús su madre: 'No tienen vino.' Jesús le responde: '¿Qué  tengo yo contigo, mujer? Todavía no ha llegado mi hora.' Dice su madre a los sirvientes: 'Haced lo que él os diga'."),
      padreNuestro,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      gloria,
      AudioDataMisterio("assets/images/luminosos/m3.jpg","audios/luminosos/m3.mp3",
          "El tiempo se ha cumplido y el Reino de Dios está cerca; convertíos  y creed en la Buena Nueva."),
      padreNuestro,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      gloria,
      AudioDataMisterio("assets/images/luminosos/m4.jpg","audios/luminosos/m4.mp3",
          "Y vino una voz desde la nube, que decía: 'Este es mi Hijo, mi Elegido; escuchadle'. "),
      padreNuestro,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      gloria,
      AudioDataMisterio("assets/images/luminosos/m5.jpg","audios/luminosos/m5.mp3",
          "Antes de la fiesta de la Pascua, sabiendo Jesús que había llegado su hora de pasar de este mundo al Padre, habiendo amado  a los suyos que estaban en el mundo, los amó hasta el extremo."),
    ];
    return retorno;
  }

  List<AudioDataMisterio> getMisteriosGloriosos() {
    List<AudioDataMisterio> retorno = [
      AudioDataMisterio("assets/images/gloriosos/m1.jpg","audios/gloriosos/m1.mp3",
          "El no está aquí, ha resucitado. Mirad el lugar donde ellos lo colocaron."),
      padreNuestro,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      gloria,
      AudioDataMisterio("assets/images/gloriosos/m2.jpg","audios/gloriosos/m2.mp3",
          "Él fue elevado al cielo y está sentado a la diestra de Dios Padre."),
      padreNuestro,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      gloria,
      AudioDataMisterio("assets/images/gloriosos/m3.jpg","audios/gloriosos/m3.mp3",
          "Y de repente se oyó un sonido que venía del Cielo...y aparecieron lenguas de fuego sobre sus cabezas... y ellos se llenaron del Espíritu Santo."),
      padreNuestro,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      gloria,
      AudioDataMisterio("assets/images/gloriosos/m4.jpg","audios/gloriosos/m4.mp3",
          "Escucha, hija, mira; vuelve tu oído, porque el rey puede desear tu belleza. Toda glorioso está la hija del rey a su llegada; su atavío está tejido con hilos de oro."),
      padreNuestro,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      aveMaria,
      gloria,
      AudioDataMisterio("assets/images/gloriosos/m5.jpg","audios/gloriosos/m5.mp3",
          "Una gran señal apareció en el cielo: una Mujer, vestida del sol, con la luna bajo sus pies, y una corona de doce estrellas sobre su cabeza…"),
    ];
    return retorno;
  }
}
