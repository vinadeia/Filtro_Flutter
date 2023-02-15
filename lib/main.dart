import 'package:flutter/material.dart';
import 'package:projeto_perguntas/src/views/pages/home_page.dart';

main() => runApp(const PerguntaApp());

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }

}


class PerguntaAppState extends State<PerguntaApp>{

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Api Search List',
      theme: ThemeData(
        useMaterial3: true
      ),
      home: const HomePage()
    );
  }
}
