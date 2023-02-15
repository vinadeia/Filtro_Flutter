import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projeto_perguntas/src/model/characteres_model.dart';
import 'package:projeto_perguntas/src/views/pages/character_details_page.dart';

class MyList extends StatelessWidget {
  final Character character;
  const MyList({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(10),
            bottom: Radius.circular(10)
          )
        ),
      child: Column(
        children: [
          ListTile(
            leading: Hero(
              tag: character.id,
              child: CircleAvatar(
                backgroundImage: NetworkImage(character.image),
              )
            ),
            title: Text(character.title),
            subtitle: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(character.category),
                Text(character.description,
                overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) =>
                CharacterDetailsPage(character: character)
              ));
            },
          ),
          // const Divider(
          //   thickness: 2.0,
          // )
        ],
      ),
    );
  }
}