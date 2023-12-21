import 'package:flutter/material.dart';

class CurrencyConvMaterialPage extends StatefulWidget{
  const CurrencyConvMaterialPage({super.key});
  @override
  State<CurrencyConvMaterialPage> createState() {
    return _CurrencyConvMaterialPageState();
  } 
}

class _CurrencyConvMaterialPageState extends State<CurrencyConvMaterialPage>{
  /*late double result;
    @override
    void initState(){
      super.initState();
    }*/
    double result = 0;
    final TextEditingController textEditingController = TextEditingController();
    @override
    Widget build(BuildContext context){
      //return const Scaffold();
    // ignore: unused_local_variable
    final border = OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 2.0,
                        style: BorderStyle.solid,
                        color: Colors.black87,
                      ),
                      borderRadius: BorderRadius.circular(60),
    );
    // ignore: prefer_const_constructors
    const edgeInsets = EdgeInsets.all(14.0);
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
        // ignore: prefer_const_constructors
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          title: const Text('Currency Converter'),
          centerTitle: true,
        ),
        body: Center(
          // ignore: prefer_const_constructors
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('INR $result', 
                style: const TextStyle(fontSize: 40,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
               Padding(
                padding: edgeInsets,
                child: TextField(
                  controller: textEditingController,
                  style: const TextStyle(
                    color: Colors.black87,
                  ),
                  decoration: const InputDecoration(
                    hintText:
                      'Please enter the amount in USD',
                      hintStyle: TextStyle(
                        color: Colors.black87,
                      ),
                      prefixIcon: Icon(Icons.monetization_on_outlined),
                      prefixIconColor: Colors.black87,
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2.0,
                          style: BorderStyle.solid,
                          color: Colors.black87,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(60),
                        ),
                      ),
                      enabledBorder:  OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2.0,
                          style: BorderStyle.solid,
                          color: Colors.black87,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(60),
                        ),
                     ),
                   ),
                   keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                    signed: true,
                   ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      result = double.parse(textEditingController.text)*83.28;
                    });
                    }, 
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white38,
                    foregroundColor: Colors.black,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ), 
                  child: const Text('Convert'),
                ),
              ),
            ],
          )
        ),
    );
    }
}

