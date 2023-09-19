import 'package:freezed_annotation/freezed_annotation.dart';

part 'info.freezed.dart';
part 'info.g.dart';

@freezed
class Info with _$Info {
  const Info._();

  const factory Info({
    @Default(0) int count,
    @Default(0) int pages,
    @Default('') String next,
    @Default('') String prev,
  }) = _Info;

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
}
