// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GenreModel> _$genreModelSerializer = new _$GenreModelSerializer();

class _$GenreModelSerializer implements StructuredSerializer<GenreModel> {
  @override
  final Iterable<Type> types = const [GenreModel, _$GenreModel];
  @override
  final String wireName = 'GenreModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, GenreModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'genres',
      serializers.serialize(object.genres,
          specifiedType:
              const FullType(BuiltList, const [const FullType(GenreData)])),
    ];

    return result;
  }

  @override
  GenreModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GenreModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GenreData)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GenreModel extends GenreModel {
  @override
  final BuiltList<GenreData> genres;

  factory _$GenreModel([void Function(GenreModelBuilder)? updates]) =>
      (new GenreModelBuilder()..update(updates))._build();

  _$GenreModel._({required this.genres}) : super._() {
    BuiltValueNullFieldError.checkNotNull(genres, r'GenreModel', 'genres');
  }

  @override
  GenreModel rebuild(void Function(GenreModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GenreModelBuilder toBuilder() => new GenreModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GenreModel && genres == other.genres;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, genres.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GenreModel')..add('genres', genres))
        .toString();
  }
}

class GenreModelBuilder implements Builder<GenreModel, GenreModelBuilder> {
  _$GenreModel? _$v;

  ListBuilder<GenreData>? _genres;
  ListBuilder<GenreData> get genres =>
      _$this._genres ??= new ListBuilder<GenreData>();
  set genres(ListBuilder<GenreData>? genres) => _$this._genres = genres;

  GenreModelBuilder();

  GenreModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _genres = $v.genres.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenreModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GenreModel;
  }

  @override
  void update(void Function(GenreModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GenreModel build() => _build();

  _$GenreModel _build() {
    _$GenreModel _$result;
    try {
      _$result = _$v ?? new _$GenreModel._(genres: genres.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'genres';
        genres.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GenreModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
