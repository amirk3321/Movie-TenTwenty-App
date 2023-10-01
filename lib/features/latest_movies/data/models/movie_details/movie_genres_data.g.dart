// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_genres_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MovieGenresData> _$movieGenresDataSerializer =
    new _$MovieGenresDataSerializer();

class _$MovieGenresDataSerializer
    implements StructuredSerializer<MovieGenresData> {
  @override
  final Iterable<Type> types = const [MovieGenresData, _$MovieGenresData];
  @override
  final String wireName = 'MovieGenresData';

  @override
  Iterable<Object?> serialize(Serializers serializers, MovieGenresData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  MovieGenresData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieGenresDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$MovieGenresData extends MovieGenresData {
  @override
  final num? id;
  @override
  final String? name;

  factory _$MovieGenresData([void Function(MovieGenresDataBuilder)? updates]) =>
      (new MovieGenresDataBuilder()..update(updates))._build();

  _$MovieGenresData._({this.id, this.name}) : super._();

  @override
  MovieGenresData rebuild(void Function(MovieGenresDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieGenresDataBuilder toBuilder() =>
      new MovieGenresDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovieGenresData && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MovieGenresData')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class MovieGenresDataBuilder
    implements Builder<MovieGenresData, MovieGenresDataBuilder> {
  _$MovieGenresData? _$v;

  num? _id;
  num? get id => _$this._id;
  set id(num? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  MovieGenresDataBuilder();

  MovieGenresDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieGenresData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MovieGenresData;
  }

  @override
  void update(void Function(MovieGenresDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MovieGenresData build() => _build();

  _$MovieGenresData _build() {
    final _$result = _$v ?? new _$MovieGenresData._(id: id, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
