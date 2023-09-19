import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../app.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepository repository;
  CharactersCubit({required this.repository}) : super(CharactersInitial());

  int currentPage = 1;
  List<Character> allCharacters = [];

  Future<void> getCharacters() async {
    if (state is CharactersLoading) return;
    // emit(CharactersLoading());
    try {
      final response = await repository.getAllCharacters(page: currentPage);
      allCharacters.addAll(response.results);
      emit(CharactersSuccess(characters: allCharacters, maxItems: response.info.count));
      currentPage++;
      log(allCharacters.length.toString());
    } on Exception catch (e) {
      emit(CharactersError(message: e.toString()));
    }
  }
}
