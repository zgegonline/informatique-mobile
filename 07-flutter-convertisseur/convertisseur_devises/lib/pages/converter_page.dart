import 'package:flutter/material.dart';
import 'package:convertisseur_devises/models/currency.dart';
import 'package:convertisseur_devises/styles.dart';

class CurrencyConverterPage extends StatefulWidget {
  CurrencyConverterPage();

  @override
  State<StatefulWidget> createState() {
    return _CurrencyConverterPage();
  }
}

class _CurrencyConverterPage extends State<CurrencyConverterPage> {
  double _value;
  Currency _initialCurrency;
  Currency _finalCurrency;
  double _result;

  @override
  void initState() {
    super.initState();
    _value = 0;
    _result = 0;
    _initialCurrency = Currency.EURO;
    _finalCurrency = Currency.DOLLAR;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Spacer(),
          Text(
            "Valeur",
            style: AppStyle.labelStyle,
          ),
          Spacer(),
          TextField(
            style: AppStyle.inputStyle,
            onChanged: (input) {
              var newValue = double.parse(input);
              setState(() {
                _value = newValue;
              });
            }
          ),
          Spacer(),
          Text(
            "De",
            style: AppStyle.labelStyle,
          ),
          Spacer(),
          DropdownButton(
            value: _initialCurrency,
            items:
              Currency.values.map((Currency c) {
                return DropdownMenuItem<Currency>(
                    value: c,
                    child: Text(c.label)
                  );
              }).toList() 
            , 
            onChanged: (value) {
              setState(() {
                _initialCurrency = value;
              });
            } ,
            isExpanded: true,
          ),
          Spacer(),
          Text(
            "Vers",
            style: AppStyle.labelStyle,
          ),
          Spacer(),
          DropdownButton(
            value: _finalCurrency,
            items:
              Currency.values.map((Currency c) {
                return DropdownMenuItem<Currency>(
                    value: c,
                    child: Text(c.label)
                  );
              }).toList() 
            , 
            onChanged: (value) {
              setState(() {
                _finalCurrency = value;
              });
            } ,
            isExpanded: true,
          ),
          Spacer(flex: 2),
          ElevatedButton(
            onPressed: () { 
              setState(() {
                _result = _value * rate[_initialCurrency] / rate[_finalCurrency];
              });
            }, 
            child: Text("Convertir")
          ),
          Spacer(flex: 2),
          Text(
            _result.toString(), 
            style: AppStyle.labelStyle
          ),
          Spacer(),
        ],
      )
    );
  }
}