import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projeto_perguntas/src/model/characteres_model.dart';

class CharacterDetailsPage extends StatelessWidget {
  final Character character;
  const CharacterDetailsPage({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Center(
          child: Text('Detalhes do Produto',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700
            ),
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10)
          )
        ),
        backgroundColor: Colors.green[300],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 10, 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 16.0,
                ),
                Center(
                  child: Image.network(
                    character.image,
                    width: 300,
                  ),
                ),
                const SizedBox(
                  height: 22.0,
                ),
                Text(
                  character.title,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Text(
                  character.category,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Text(
                  character.description,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 12.0,
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}