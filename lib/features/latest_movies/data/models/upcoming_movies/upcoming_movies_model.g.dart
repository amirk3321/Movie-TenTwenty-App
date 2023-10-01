// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upcoming_movies_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UpcomingMoviesModel> _$upcomingMoviesModelSerializer =
    new _$UpcomingMoviesModelSerializer();

class _$UpcomingMoviesModelSerializer
    implements StructuredSerializer<UpcomingMoviesModel> {
  @override
  final Iterable<Type> types = const [
    UpcomingMoviesModel,
    _$UpcomingMoviesModel
  ];
  @override
  final String wireName = 'UpcomingMoviesModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, UpcomingMoviesModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'results',
      serializers.serialize(object.results,
          specifiedType: const FullType(
              BuiltList, const [const FullType(UpcomingMovieData)])),
    ];
    Object? value;
    value = object.dates;
    if (value != null) {
      result
        ..add('dates')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DatesData)));
    }
    value = object.page;
    if (value != null) {
      result
        ..add('page')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    value = object.total_pages;
    if (value != null) {
      result
        ..add('total_pages')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    value = object.total_results;
    if (value != null) {
      result
        ..add('total_results')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    return result;
  }

  @override
  UpcomingMoviesModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UpcomingMoviesModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'dates':
          result.dates.replace(serializers.deserialize(value,
              specifiedType: const FullType(DatesData))! as DatesData);
          break;
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num?;
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(UpcomingMovieData)]))!
              as BuiltList<Object?>);
          break;
        case 'total_pages':
          result.total_pages = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num?;
          break;
        case 'total_results':
          result.total_results = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num?;
          break;
      }
    }

    return result.build();
  }
}

class _$UpcomingMoviesModel extends UpcomingMoviesModel {
  @override
  final DatesData? dates;
  @override
  final num? page;
  @override
  final BuiltList<UpcomingMovieData> results;
  @override
  final num? total_pages;
  @override
  final num? total_results;

  factory _$UpcomingMoviesModel(
          [void Function(UpcomingMoviesModelBuilder)? updates]) =>
      (new UpcomingMoviesModelBuilder()..update(updates))._build();

  _$UpcomingMoviesModel._(
      {this.dates,
      this.page,
      required this.results,
      this.total_pages,
      this.total_results})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        results, r'UpcomingMoviesModel', 'results');
  }

  @override
  UpcomingMoviesModel rebuild(
          void Function(UpcomingMoviesModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpcomingMoviesModelBuilder toBuilder() =>
      new UpcomingMoviesModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpcomingMoviesModel &&
        dates == other.dates &&
        page == other.page &&
        results == other.results &&
        total_pages == other.total_pages &&
        total_results == other.total_results;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dates.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jc(_$hash, total_pages.hashCode);
    _$hash = $jc(_$hash, total_results.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpcomingMoviesModel')
          ..add('dates', dates)
          ..add('page', page)
          ..add('results', results)
          ..add('total_pages', total_pages)
          ..add('total_results', total_results))
        .toString();
  }
}

class UpcomingMoviesModelBuilder
    implements Builder<UpcomingMoviesModel, UpcomingMoviesModelBuilder> {
  _$UpcomingMoviesModel? _$v;

  DatesDataBuilder? _dates;
  DatesDataBuilder get dates => _$this._dates ??= new DatesDataBuilder();
  set dates(DatesDataBuilder? dates) => _$this._dates = dates;

  num? _page;
  num? get page => _$this._page;
  set page(num? page) => _$this._page = page;

  ListBuilder<UpcomingMovieData>? _results;
  ListBuilder<UpcomingMovieData> get results =>
      _$this._results ??= new ListBuilder<UpcomingMovieData>();
  set results(ListBuilder<UpcomingMovieData>? results) =>
      _$this._results = results;

  num? _total_pages;
  num? get total_pages => _$this._total_pages;
  set total_pages(num? total_pages) => _$this._total_pages = total_pages;

  num? _total_results;
  num? get total_results => _$this._total_results;
  set total_results(num? total_results) =>
      _$this._total_results = total_results;

  UpcomingMoviesModelBuilder();

  UpcomingMoviesModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dates = $v.dates?.toBuilder();
      _page = $v.page;
      _results = $v.results.toBuilder();
      _total_pages = $v.total_pages;
      _total_results = $v.total_results;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpcomingMoviesModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpcomingMoviesModel;
  }

  @override
  void update(void Function(UpcomingMoviesModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpcomingMoviesModel build() => _build();

  _$UpcomingMoviesModel _build() {
    _$UpcomingMoviesModel _$result;
    try {
      _$result = _$v ??
          new _$UpcomingMoviesModel._(
              dates: _dates?.build(),
              page: page,
              results: results.build(),
              total_pages: total_pages,
              total_results: total_results);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dates';
        _dates?.build();

        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpcomingMoviesModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
