import '../../app.dart';

abstract interface class CharactersRepository {
  Future<CharacterResponse> getAllCharacters({required int page});
  Future<String> getSingleCharacter({required int id});
}
