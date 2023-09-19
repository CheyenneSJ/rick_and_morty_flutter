import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../app.dart';

class CharactersPage extends StatefulWidget {
  const CharactersPage({super.key});

  @override
  State<CharactersPage> createState() => _CharactersPageState();
}

class _CharactersPageState extends State<CharactersPage> {
  final cubit = sl<CharactersCubit>();
  final scrollController = ScrollController();

  @override
  void initState() {
    if (cubit.allCharacters.isEmpty) {
      cubit.getCharacters();
    }
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        if (cubit.state is CharactersSuccess &&
            (cubit.state as CharactersSuccess).hasMorePages) {
          cubit.getCharacters();
        }
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharactersCubit, CharactersState>(
      builder: (context, state) {
        return switch (state) {
          CharactersInitial() => const Center(
              child: CircularProgressIndicator(),
            ),
          CharactersLoading() => const Center(
              child: CircularProgressIndicator(),
            ),
          CharactersError(message: final message) => Center(
              child: Text(message),
            ),
          CharactersSuccess(characters: final characters) => GridView.builder(
              itemCount: state.hasMorePages
                  ? characters.length + 2
                  : characters.length,
              controller: scrollController,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                if (index < characters.length) {
                  final character = characters[index];
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              CharacterDetailPage(character: character)));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          Hero(
                            tag: 'character_${character.id}',
                            child: Image.network(
                              character.image,
                            ),
                          ),
                          Text(
                            character.name,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  );
                } else {
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.all(32),
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
              },
            ),
        };
      },
    );
  }
}
