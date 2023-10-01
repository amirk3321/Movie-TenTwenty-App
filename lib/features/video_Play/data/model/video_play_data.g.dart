// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_play_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VideoPlayData> _$videoPlayDataSerializer =
    new _$VideoPlayDataSerializer();

class _$VideoPlayDataSerializer implements StructuredSerializer<VideoPlayData> {
  @override
  final Iterable<Type> types = const [VideoPlayData, _$VideoPlayData];
  @override
  final String wireName = 'VideoPlayData';

  @override
  Iterable<Object?> serialize(Serializers serializers, VideoPlayData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.iso_639_1;
    if (value != null) {
      result
        ..add('iso_639_1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.iso_3166_1;
    if (value != null) {
      result
        ..add('iso_3166_1')
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
    value = object.key;
    if (value != null) {
      result
        ..add('key')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.site;
    if (value != null) {
      result
        ..add('site')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.size;
    if (value != null) {
      result
        ..add('size')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.official;
    if (value != null) {
      result
        ..add('official')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.published_at;
    if (value != null) {
      result
        ..add('published_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  VideoPlayData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VideoPlayDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'iso_639_1':
          result.iso_639_1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'iso_3166_1':
          result.iso_3166_1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'key':
          result.key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'site':
          result.site = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'size':
          result.size = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'official':
          result.official = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'published_at':
          result.published_at = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$VideoPlayData extends VideoPlayData {
  @override
  final String? iso_639_1;
  @override
  final String? iso_3166_1;
  @override
  final String? name;
  @override
  final String? key;
  @override
  final String? site;
  @override
  final num? size;
  @override
  final String? type;
  @override
  final bool? official;
  @override
  final String? published_at;
  @override
  final String? id;

  factory _$VideoPlayData([void Function(VideoPlayDataBuilder)? updates]) =>
      (new VideoPlayDataBuilder()..update(updates))._build();

  _$VideoPlayData._(
      {this.iso_639_1,
      this.iso_3166_1,
      this.name,
      this.key,
      this.site,
      this.size,
      this.type,
      this.official,
      this.published_at,
      this.id})
      : super._();

  @override
  VideoPlayData rebuild(void Function(VideoPlayDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VideoPlayDataBuilder toBuilder() => new VideoPlayDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VideoPlayData &&
        iso_639_1 == other.iso_639_1 &&
        iso_3166_1 == other.iso_3166_1 &&
        name == other.name &&
        key == other.key &&
        site == other.site &&
        size == other.size &&
        type == other.type &&
        official == other.official &&
        published_at == other.published_at &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, iso_639_1.hashCode);
    _$hash = $jc(_$hash, iso_3166_1.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, site.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, official.hashCode);
    _$hash = $jc(_$hash, published_at.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VideoPlayData')
          ..add('iso_639_1', iso_639_1)
          ..add('iso_3166_1', iso_3166_1)
          ..add('name', name)
          ..add('key', key)
          ..add('site', site)
          ..add('size', size)
          ..add('type', type)
          ..add('official', official)
          ..add('published_at', published_at)
          ..add('id', id))
        .toString();
  }
}

class VideoPlayDataBuilder
    implements Builder<VideoPlayData, VideoPlayDataBuilder> {
  _$VideoPlayData? _$v;

  String? _iso_639_1;
  String? get iso_639_1 => _$this._iso_639_1;
  set iso_639_1(String? iso_639_1) => _$this._iso_639_1 = iso_639_1;

  String? _iso_3166_1;
  String? get iso_3166_1 => _$this._iso_3166_1;
  set iso_3166_1(String? iso_3166_1) => _$this._iso_3166_1 = iso_3166_1;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _site;
  String? get site => _$this._site;
  set site(String? site) => _$this._site = site;

  num? _size;
  num? get size => _$this._size;
  set size(num? size) => _$this._size = size;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  bool? _official;
  bool? get official => _$this._official;
  set official(bool? official) => _$this._official = official;

  String? _published_at;
  String? get published_at => _$this._published_at;
  set published_at(String? published_at) => _$this._published_at = published_at;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  VideoPlayDataBuilder();

  VideoPlayDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _iso_639_1 = $v.iso_639_1;
      _iso_3166_1 = $v.iso_3166_1;
      _name = $v.name;
      _key = $v.key;
      _site = $v.site;
      _size = $v.size;
      _type = $v.type;
      _official = $v.official;
      _published_at = $v.published_at;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VideoPlayData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VideoPlayData;
  }

  @override
  void update(void Function(VideoPlayDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VideoPlayData build() => _build();

  _$VideoPlayData _build() {
    final _$result = _$v ??
        new _$VideoPlayData._(
            iso_639_1: iso_639_1,
            iso_3166_1: iso_3166_1,
            name: name,
            key: key,
            site: site,
            size: size,
            type: type,
            official: official,
            published_at: published_at,
            id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
