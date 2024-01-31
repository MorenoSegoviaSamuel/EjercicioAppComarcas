import 'package:flutter/material.dart';
import 'package:ejercicioappcomarcas/info/comarques.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp
      (title: 'Comarcas de la Comunitat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: provincias(),
    );
  }
}

class provincias extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top,
          decoration: const BoxDecoration(
            image: DecorationImage(
              opacity: 0.2,
              image: AssetImage("assets/logos/fondo.png"),
              repeat: ImageRepeat.repeat
            )
          ),
          child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 110,
                backgroundImage: NetworkImage(provincies["provincies"][0]["img"]),
              ),
              Text(
                'Prueba',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: "Pacifico" ),
              ),
              CircleAvatar(
                radius: 110,
                backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/8/8f/2006_-_panoramio_%2868%29.jpg") ,
              ),
              Text(
                'Prueba2',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: "Pacifico" ),
              ),
              CircleAvatar(
                radius: 110,
                backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/8/8f/2006_-_panoramio_%2868%29.jpg") ,
              ),
              Text(
                'Prueba3',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: "Pacifico" ),
              ),
            ],
          ),
        ),
      ),
      )
    );
  }
}
