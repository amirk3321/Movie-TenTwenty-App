// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_movies_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SearchMoviesModel> _$searchMoviesModelSerializer =
    new _$SearchMoviesModelSerializer();

class _$SearchMoviesModelSerializer
    implements StructuredSerializer<SearchMoviesModel> {
  @override
  final Iterable<Type> types = const [SearchMoviesModel, _$SearchMoviesModel];
  @override
  final String wireName = 'SearchMoviesModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, SearchMoviesModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'results',
      serializers.serialize(object.results,
          specifiedType: const FullType(
              BuiltList, const [const FullType(SearchMoviesData)])),
    ];
    Object? value;
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
  SearchMoviesModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchMoviesModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num?;
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SearchMoviesData)]))!
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

class _$SearchMoviesModel extends SearchMoviesModel {
  @override
  final num? page;
  @override
  final BuiltList<SearchMoviesData> results;
  @override
  final num? total_pages;
  @override
  final num? total_results;

  factory _$SearchMoviesModel(
          [void Function(SearchMoviesModelBuilder)? updates]) =>
      (new SearchMoviesModelBuilder()..update(updates))._build();

  _$SearchMoviesModel._(
      {this.page, required this.results, this.total_pages, this.total_results})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        results, r'SearchMoviesModel', 'results');
  }

  @override
  SearchMoviesModel rebuild(void Function(SearchMoviesModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchMoviesModelBuilder toBuilder() =>
      new SearchMoviesModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchMoviesModel &&
        page == other.page &&
        results == other.results &&
        total_pages == other.total_pages &&
        total_results == other.total_results;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jc(_$hash, total_pages.hashCode);
    _$hash = $jc(_$hash, total_results.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SearchMoviesModel')
          ..add('page', page)
          ..add('results', results)
          ..add('total_pages', total_pages)
          ..add('total_results', total_results))
        .toString();
  }
}

class SearchMoviesModelBuilder
    implements Builder<SearchMoviesModel, SearchMoviesModelBuilder> {
  _$SearchMoviesModel? _$v;

  num? _page;
  num? get page => _$this._page;
  set page(num? page) => _$this._page = page;

  ListBuilder<SearchMoviesData>? _results;
  ListBuilder<SearchMoviesData> get results =>
      _$this._results ??= new ListBuilder<SearchMoviesData>();
  set results(ListBuilder<SearchMoviesData>? results) =>
      _$this._results = results;

  num? _total_pages;
  num? get total_pages => _$this._total_pages;
  set total_pages(num? total_pages) => _$this._total_pages = total_pages;

  num? _total_results;
  num? get total_results => _$this._total_results;
  set total_results(num? total_results) =>
      _$this._total_results = total_results;

  SearchMoviesModelBuilder();

  SearchMoviesModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _results = $v.results.toBuilder();
      _total_pages = $v.total_pages;
      _total_results = $v.total_results;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchMoviesModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchMoviesModel;
  }

  @override
  void update(void Function(SearchMoviesModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchMoviesModel build() => _build();

  _$SearchMoviesModel _build() {
    _$SearchMoviesModel _$result;
    try {
      _$result = _$v ??
          new _$SearchMoviesModel._(
              page: page,
              results: results.build(),
              total_pages: total_pages,
              total_results: total_results);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SearchMoviesModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
