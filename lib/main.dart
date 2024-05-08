import 'package:flutter/material.dart';
import 'package:navegacao/pages/first_page.dart';
import 'package:navegacao/pages/second_page.dart';

void main() {
  runApp(const MyApp());
}

//primeiro widget, n eh obrigatorio
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Material app sempre é o primeiro, responsável pela navegação, sempre pede a home
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //cria widget para a tela
      //home: FirstPage(), se usa rota n precisa de home
      routes: {
        '/' : (context) => FirstPage(),
        '/second' : (context) => SecondPage(),
      },
      initialRoute: '/',
    );
  }
}

