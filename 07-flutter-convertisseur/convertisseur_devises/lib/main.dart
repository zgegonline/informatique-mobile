import 'package:convertisseur_devises/pages/converter_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Convertisseur de devises')
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: CurrencyConverterPage()
        )
      )
    );
  }
}