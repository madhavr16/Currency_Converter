import 'package:currency_conv/currency_conv_material_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
   const MyApp({super.key});
  @override
  
  Widget build(BuildContext context){
    
    return const MaterialApp(
      home: CurrencyConvMaterialPage(),
    );
  }
}
