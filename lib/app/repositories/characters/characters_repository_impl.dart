import 'dart:developer';

import '../../app.dart';

class CharactersRepositoryImpl implements CharactersRepository {
  final CustomDio dio;

  CharactersRepositoryImpl({required this.dio});

  static const _character = 'character';

  @override
  Future<CharacterResponse> getAllCharacters({required int page}) async {
    try {
      final response = await dio.unAuth().get(
        _character,
        queryParameters: {'page': page},
      );

      return CharacterResponse.fromJson(response.data);
    } on Exception catch (e, s) {
      log(e.toString(), stackTrace: s);
      throw RepositoryException(message: e.toString());
    }
  }

  @override
  Future<String> getSingleCharacter({required int id}) {
    // TODO: implement getSingleCharacter
    throw UnimplementedError();
  }
}
