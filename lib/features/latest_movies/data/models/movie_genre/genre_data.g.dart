// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GenreData> _$genreDataSerializer = new _$GenreDataSerializer();

class _$GenreDataSerializer implements StructuredSerializer<GenreData> {
  @override
  final Iterable<Type> types = const [GenreData, _$GenreData];
  @override
  final String wireName = 'GenreData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GenreData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  GenreData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GenreDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$GenreData extends GenreData {
  @override
  final int? id;
  @override
  final String? name;

  factory _$GenreData([void Function(GenreDataBuilder)? updates]) =>
      (new GenreDataBuilder()..update(updates))._build();

  _$GenreData._({this.id, this.name}) : super._();

  @override
  GenreData rebuild(void Function(GenreDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GenreDataBuilder toBuilder() => new GenreDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GenreData && id == other.id && name == other.name;
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
    return (newBuiltValueToStringHelper(r'GenreData')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GenreDataBuilder implements Builder<GenreData, GenreDataBuilder> {
  _$GenreData? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GenreDataBuilder();

  GenreDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenreData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GenreData;
  }

  @override
  void update(void Function(GenreDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GenreData build() => _build();

  _$GenreData _build() {
    final _$result = _$v ?? new _$GenreData._(id: id, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
