import 'package:flutter/material.dart';
import 'package:projeto_perguntas/src/model/characteres_model.dart';
import '../../controller/character_controller.dart';
import '../components/list.dart';
import '../../views/components/loading.dart';
import '../../views/components/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Character> _characters = <Character>[];
  List<Character> _charactersDisplay = <Character>[];

  bool _isLoading = true;
  
  @override
  void initState() {
    super.initState();
    fetchCharacters().then((value) {
      setState(() {
        _isLoading = false;
        _characters.addAll(value);
        _charactersDisplay = _characters;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Filtro Roupas',
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
        child: ListView.builder(
          itemBuilder: (context, index){
            if(!_isLoading){
              return index == 0 ? MySearch(
                hintText: 'Ex: Título, Categoria ou Descrição',
                onChanged: (searchText){
                  searchText = searchText.toLowerCase();
                  setState(() {
                    _charactersDisplay = _characters.where((u) {
                      var nameLowerCase = u.title.toLowerCase();
                      var nickNameLowerCase = u.category.toLowerCase();
                      var portrayedLowerCase = u.description.toLowerCase();
                      return 
                        nameLowerCase.contains(searchText) || 
                        nickNameLowerCase.contains(searchText) || 
                        portrayedLowerCase.contains(searchText);
                    }).toList();
                  });
                },
              ) : MyList(character: _charactersDisplay[index -1]);
            } else {
              return const MyLoading();
            }
          },
          itemCount: _charactersDisplay.length + 1,
        )
      ),
    );
  }
}