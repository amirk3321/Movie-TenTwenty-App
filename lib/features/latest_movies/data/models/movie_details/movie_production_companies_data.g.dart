// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_production_companies_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MovieProductionCompaniesData>
    _$movieProductionCompaniesDataSerializer =
    new _$MovieProductionCompaniesDataSerializer();

class _$MovieProductionCompaniesDataSerializer
    implements StructuredSerializer<MovieProductionCompaniesData> {
  @override
  final Iterable<Type> types = const [
    MovieProductionCompaniesData,
    _$MovieProductionCompaniesData
  ];
  @override
  final String wireName = 'MovieProductionCompaniesData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, MovieProductionCompaniesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    value = object.logo_path;
    if (value != null) {
      result
        ..add('logo_path')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.origin_country;
    if (value != null) {
      result
        ..add('origin_country')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  MovieProductionCompaniesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieProductionCompaniesDataBuilder();

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
        case 'logo_path':
          result.logo_path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'origin_country':
          result.origin_country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$MovieProductionCompaniesData extends MovieProductionCompaniesData {
  @override
  final num? id;
  @override
  final String? logo_path;
  @override
  final String? name;
  @override
  final String? origin_country;

  factory _$MovieProductionCompaniesData(
          [void Function(MovieProductionCompaniesDataBuilder)? updates]) =>
      (new MovieProductionCompaniesDataBuilder()..update(updates))._build();

  _$MovieProductionCompaniesData._(
      {this.id, this.logo_path, this.name, this.origin_country})
      : super._();

  @override
  MovieProductionCompaniesData rebuild(
          void Function(MovieProductionCompaniesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieProductionCompaniesDataBuilder toBuilder() =>
      new MovieProductionCompaniesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovieProductionCompaniesData &&
        id == other.id &&
        logo_path == other.logo_path &&
        name == other.name &&
        origin_country == other.origin_country;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, logo_path.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, origin_country.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MovieProductionCompaniesData')
          ..add('id', id)
          ..add('logo_path', logo_path)
          ..add('name', name)
          ..add('origin_country', origin_country))
        .toString();
  }
}

class MovieProductionCompaniesDataBuilder
    implements
        Builder<MovieProductionCompaniesData,
            MovieProductionCompaniesDataBuilder> {
  _$MovieProductionCompaniesData? _$v;

  num? _id;
  num? get id => _$this._id;
  set id(num? id) => _$this._id = id;

  String? _logo_path;
  String? get logo_path => _$this._logo_path;
  set logo_path(String? logo_path) => _$this._logo_path = logo_path;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _origin_country;
  String? get origin_country => _$this._origin_country;
  set origin_country(String? origin_country) =>
      _$this._origin_country = origin_country;

  MovieProductionCompaniesDataBuilder();

  MovieProductionCompaniesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _logo_path = $v.logo_path;
      _name = $v.name;
      _origin_country = $v.origin_country;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieProductionCompaniesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MovieProductionCompaniesData;
  }

  @override
  void update(void Function(MovieProductionCompaniesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MovieProductionCompaniesData build() => _build();

  _$MovieProductionCompaniesData _build() {
    final _$result = _$v ??
        new _$MovieProductionCompaniesData._(
            id: id,
            logo_path: logo_path,
            name: name,
            origin_country: origin_country);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
