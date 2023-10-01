// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_play_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VideoPlayModel> _$videoPlayModelSerializer =
    new _$VideoPlayModelSerializer();

class _$VideoPlayModelSerializer
    implements StructuredSerializer<VideoPlayModel> {
  @override
  final Iterable<Type> types = const [VideoPlayModel, _$VideoPlayModel];
  @override
  final String wireName = 'VideoPlayModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, VideoPlayModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'results',
      serializers.serialize(object.results,
          specifiedType:
              const FullType(BuiltList, const [const FullType(VideoPlayData)])),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    return result;
  }

  @override
  VideoPlayModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VideoPlayModelBuilder();

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
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(VideoPlayData)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$VideoPlayModel extends VideoPlayModel {
  @override
  final num? id;
  @override
  final BuiltList<VideoPlayData> results;

  factory _$VideoPlayModel([void Function(VideoPlayModelBuilder)? updates]) =>
      (new VideoPlayModelBuilder()..update(updates))._build();

  _$VideoPlayModel._({this.id, required this.results}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        results, r'VideoPlayModel', 'results');
  }

  @override
  VideoPlayModel rebuild(void Function(VideoPlayModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VideoPlayModelBuilder toBuilder() =>
      new VideoPlayModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VideoPlayModel &&
        id == other.id &&
        results == other.results;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VideoPlayModel')
          ..add('id', id)
          ..add('results', results))
        .toString();
  }
}

class VideoPlayModelBuilder
    implements Builder<VideoPlayModel, VideoPlayModelBuilder> {
  _$VideoPlayModel? _$v;

  num? _id;
  num? get id => _$this._id;
  set id(num? id) => _$this._id = id;

  ListBuilder<VideoPlayData>? _results;
  ListBuilder<VideoPlayData> get results =>
      _$this._results ??= new ListBuilder<VideoPlayData>();
  set results(ListBuilder<VideoPlayData>? results) => _$this._results = results;

  VideoPlayModelBuilder();

  VideoPlayModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _results = $v.results.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VideoPlayModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VideoPlayModel;
  }

  @override
  void update(void Function(VideoPlayModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VideoPlayModel build() => _build();

  _$VideoPlayModel _build() {
    _$VideoPlayModel _$result;
    try {
      _$result =
          _$v ?? new _$VideoPlayModel._(id: id, results: results.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VideoPlayModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
