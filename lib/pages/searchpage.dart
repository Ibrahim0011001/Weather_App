import 'package:flutter/material.dart';

class Searchpage extends StatelessWidget {
  const Searchpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search A City'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: TextField(
          decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
              label: const Text('search'),
              hintText: 'Enter a city',
              border: const OutlineInputBorder(),
              suffix: GestureDetector(
                onTap: () {},
                child: const Icon(Icons.search),
              )),
        ),
      ),
    );
  }
}
