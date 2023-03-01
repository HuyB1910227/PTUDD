import 'package:flutter/material.dart';


class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: const TextField(
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: '🔎 Tìm kiếm',
            
          ),
        ),
      ),
    );
  }
}