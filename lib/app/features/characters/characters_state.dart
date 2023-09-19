part of 'characters_cubit.dart';

@immutable
sealed class CharactersState {}

final class CharactersInitial extends CharactersState {}

final class CharactersLoading extends CharactersState {
  CharactersLoading();
}

final class CharactersSuccess extends CharactersState {
  final List<Character> characters;
  final int maxItems;

  CharactersSuccess({
    required this.characters,
    required this.maxItems,
  });

  bool get hasMorePages => characters.length < maxItems;
}

final class CharactersError extends CharactersState {
  final String message;

  CharactersError({required this.message});
}
