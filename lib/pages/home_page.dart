import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(5.0),
              child: AppBar(backgroundColor: Colors.blue, elevation: 0)),
          body: GridView.count(
            crossAxisCount: 1,
            padding: EdgeInsets.all(5.0),
            childAspectRatio: 0.9,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            children: <Widget>[_listaRosarios(context)],
          )),
    );
  }

  Widget _listaRosarios(BuildContext context) {
    return Column(children: <Widget>[
      GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, "reproductor");
        },
        child: Container(
            height: 100,
            width: 300,
            child: Stack(
              children: <Widget>[
                Opacity(
                    opacity: 0.3,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage("assets/rosario.jpg"),
                              fit: BoxFit.cover)),
                    )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Text(
                              "Rosario",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  colors: [Colors.blue, Colors.blue[500]],
                  begin: Alignment.centerLeft,
                  end: Alignment(1.0, 1.0)),
            )),
      ),
    ]);
  }
}
