import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home:App()));

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App"),
        backgroundColor: Color(0xFFB74093),
      ),
      body: SingleChildScrollView(
        child: Center( 
          child: Column( 
            children: [
              Text(
                "Bonjour", 
                style: TextStyle(
                  color: Color(0xFFB74093),
                  fontWeight: FontWeight.bold,
                  fontSize: 40
                ),
              ),
              Text(
                "Je suis Théo",
                style: TextStyle(
                  color: Color(0xFFB74093),
                  fontSize: 30
                ),
              ),
              Image.network(
                'https://i.imgflip.com/2ad665.jpg',
                height: 350,
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (_) {
                      return AlertDialog(
                        title: Text("Contactez-moi"),
                        content: Text("Je suis à l'IMT Atlantique")
                      );
                    }
                  );
                },
                child: Text("Contactez-moi"),
                  style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFB74093))
                ),
              )
            ]
          )
        )
      )
    );
  }
}
