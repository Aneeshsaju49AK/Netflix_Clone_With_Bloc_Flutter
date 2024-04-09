import 'package:freezed_annotation/freezed_annotation.dart';
part 'downloads_model.freezed.dart';
part 'downloads_model.g.dart';

@freezed
class DownloadsPage with _$DownloadsPage {
  const factory DownloadsPage({
    @JsonKey(name: "poster_path") required String? posterPath,
  }) = _DownloadsPage;

  factory DownloadsPage.fromJson(Map<String, dynamic> json) =>
      _$DownloadsPageFromJson(json);
}
