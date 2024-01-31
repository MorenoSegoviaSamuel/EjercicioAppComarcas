import 'package:flutter/material.dart';


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
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Container(
            height: MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top,
            decoration: const BoxDecoration(
            image: DecorationImage(
            opacity: 0.2,
            image: AssetImage("assets/logos/fondo.png"),
            repeat: ImageRepeat.repeat
                ),
              ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/logos/logo_AlvaroFalomir.png', width: 400, height: 400
              ),
              SizedBox(height: 13.0),
              Text(
                'Instituto Álvaro Falomir',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, fontFamily: "Pacifico"),
              ),
              SizedBox(height: 13.0),
              TextFormField(
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Usuario',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 8.0),
              TextFormField(
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 13.0),
              ElevatedButton(
                onPressed: () {

                },
                child: Text('Iniciar sesión'),
              ),
            ],
           ),
          ),
        ),
      ),
    );
  }
}
