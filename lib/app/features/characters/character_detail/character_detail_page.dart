import 'package:flutter/material.dart';

import '../../../app.dart';

class CharacterDetailPage extends StatelessWidget {
  final Character character;
  const CharacterDetailPage({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Hero(
                    tag: 'character_${character.id}',
                    child: Image.network(
                      character.image,
                      width: double.infinity,
                      height: 350,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 16,
                    left: 16,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.black38,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: Navigator.of(context).pop,
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
                child: Column(
                  children: [
                    ItemRow(title: 'Name', value: character.name),
                    ItemRow(title: 'Status', value: character.status),
                    ItemRow(title: 'Specie', value: character.species),
                    ItemRow(title: 'Type', value: character.type),
                    ItemRow(title: 'Gender', value: character.gender),
                    ItemRow(title: 'Origin', value: character.origin.name),
                    ItemRow(title: 'Location', value: character.location.name),
                    ItemRow(title: 'Created', value: character.created.toString()),
                    ItemRow(title: 'Episodes', value: character.episode.length.toString()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
