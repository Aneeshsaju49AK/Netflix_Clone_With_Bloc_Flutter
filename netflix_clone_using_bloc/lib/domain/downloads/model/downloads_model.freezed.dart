// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downloads_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DownloadsPage _$DownloadsPageFromJson(Map<String, dynamic> json) {
  return _DownloadsPage.fromJson(json);
}

/// @nodoc
mixin _$DownloadsPage {
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownloadsPageCopyWith<DownloadsPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsPageCopyWith<$Res> {
  factory $DownloadsPageCopyWith(
          DownloadsPage value, $Res Function(DownloadsPage) then) =
      _$DownloadsPageCopyWithImpl<$Res, DownloadsPage>;
  @useResult
  $Res call({@JsonKey(name: "poster_path") String? posterPath});
}

/// @nodoc
class _$DownloadsPageCopyWithImpl<$Res, $Val extends DownloadsPage>
    implements $DownloadsPageCopyWith<$Res> {
  _$DownloadsPageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterPath = freezed,
  }) {
    return _then(_value.copyWith(
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DownloadsPageImplCopyWith<$Res>
    implements $DownloadsPageCopyWith<$Res> {
  factory _$$DownloadsPageImplCopyWith(
          _$DownloadsPageImpl value, $Res Function(_$DownloadsPageImpl) then) =
      __$$DownloadsPageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "poster_path") String? posterPath});
}

/// @nodoc
class __$$DownloadsPageImplCopyWithImpl<$Res>
    extends _$DownloadsPageCopyWithImpl<$Res, _$DownloadsPageImpl>
    implements _$$DownloadsPageImplCopyWith<$Res> {
  __$$DownloadsPageImplCopyWithImpl(
      _$DownloadsPageImpl _value, $Res Function(_$DownloadsPageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterPath = freezed,
  }) {
    return _then(_$DownloadsPageImpl(
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DownloadsPageImpl implements _DownloadsPage {
  const _$DownloadsPageImpl(
      {@JsonKey(name: "poster_path") required this.posterPath});

  factory _$DownloadsPageImpl.fromJson(Map<String, dynamic> json) =>
      _$$DownloadsPageImplFromJson(json);

  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;

  @override
  String toString() {
    return 'DownloadsPage(posterPath: $posterPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadsPageImpl &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, posterPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadsPageImplCopyWith<_$DownloadsPageImpl> get copyWith =>
      __$$DownloadsPageImplCopyWithImpl<_$DownloadsPageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DownloadsPageImplToJson(
      this,
    );
  }
}

abstract class _DownloadsPage implements DownloadsPage {
  const factory _DownloadsPage(
          {@JsonKey(name: "poster_path") required final String? posterPath}) =
      _$DownloadsPageImpl;

  factory _DownloadsPage.fromJson(Map<String, dynamic> json) =
      _$DownloadsPageImpl.fromJson;

  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @JsonKey(ignore: true)
  _$$DownloadsPageImplCopyWith<_$DownloadsPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
