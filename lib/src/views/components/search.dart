import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MySearch extends StatefulWidget {
  final void Function(String)? onChanged;
  final String? hintText;
  const MySearch({super.key, this.hintText, this.onChanged});

  @override
  State<MySearch> createState() => _MySearchState();
}

class _MySearchState extends State<MySearch> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: TextField(
        autofocus: true,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          prefixIcon: const Icon(Icons.search),
          hintText: widget.hintText

        ),
      ),
    );
  }
}