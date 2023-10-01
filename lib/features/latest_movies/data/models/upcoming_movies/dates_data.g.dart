// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dates_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DatesData> _$datesDataSerializer = new _$DatesDataSerializer();

class _$DatesDataSerializer implements StructuredSerializer<DatesData> {
  @override
  final Iterable<Type> types = const [DatesData, _$DatesData];
  @override
  final String wireName = 'DatesData';

  @override
  Iterable<Object?> serialize(Serializers serializers, DatesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'maximum',
      serializers.serialize(object.maximum,
          specifiedType: const FullType(String)),
      'minimum',
      serializers.serialize(object.minimum,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  DatesData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DatesDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'maximum':
          result.maximum = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'minimum':
          result.minimum = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DatesData extends DatesData {
  @override
  final String maximum;
  @override
  final String minimum;

  factory _$DatesData([void Function(DatesDataBuilder)? updates]) =>
      (new DatesDataBuilder()..update(updates))._build();

  _$DatesData._({required this.maximum, required this.minimum}) : super._() {
    BuiltValueNullFieldError.checkNotNull(maximum, r'DatesData', 'maximum');
    BuiltValueNullFieldError.checkNotNull(minimum, r'DatesData', 'minimum');
  }

  @override
  DatesData rebuild(void Function(DatesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DatesDataBuilder toBuilder() => new DatesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DatesData &&
        maximum == other.maximum &&
        minimum == other.minimum;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, maximum.hashCode);
    _$hash = $jc(_$hash, minimum.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DatesData')
          ..add('maximum', maximum)
          ..add('minimum', minimum))
        .toString();
  }
}

class DatesDataBuilder implements Builder<DatesData, DatesDataBuilder> {
  _$DatesData? _$v;

  String? _maximum;
  String? get maximum => _$this._maximum;
  set maximum(String? maximum) => _$this._maximum = maximum;

  String? _minimum;
  String? get minimum => _$this._minimum;
  set minimum(String? minimum) => _$this._minimum = minimum;

  DatesDataBuilder();

  DatesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _maximum = $v.maximum;
      _minimum = $v.minimum;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DatesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DatesData;
  }

  @override
  void update(void Function(DatesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DatesData build() => _build();

  _$DatesData _build() {
    final _$result = _$v ??
        new _$DatesData._(
            maximum: BuiltValueNullFieldError.checkNotNull(
                maximum, r'DatesData', 'maximum'),
            minimum: BuiltValueNullFieldError.checkNotNull(
                minimum, r'DatesData', 'minimum'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
