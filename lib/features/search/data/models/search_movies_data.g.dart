// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_movies_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SearchMoviesData> _$searchMoviesDataSerializer =
    new _$SearchMoviesDataSerializer();

class _$SearchMoviesDataSerializer
    implements StructuredSerializer<SearchMoviesData> {
  @override
  final Iterable<Type> types = const [SearchMoviesData, _$SearchMoviesData];
  @override
  final String wireName = 'SearchMoviesData';

  @override
  Iterable<Object?> serialize(Serializers serializers, SearchMoviesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'genre_ids',
      serializers.serialize(object.genre_ids,
          specifiedType:
              const FullType(BuiltList, const [const FullType(num)])),
    ];
    Object? value;
    value = object.adult;
    if (value != null) {
      result
        ..add('adult')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.backdrop_path;
    if (value != null) {
      result
        ..add('backdrop_path')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    value = object.original_language;
    if (value != null) {
      result
        ..add('original_language')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.original_title;
    if (value != null) {
      result
        ..add('original_title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.overview;
    if (value != null) {
      result
        ..add('overview')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.popularity;
    if (value != null) {
      result
        ..add('popularity')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    value = object.poster_path;
    if (value != null) {
      result
        ..add('poster_path')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.release_date;
    if (value != null) {
      result
        ..add('release_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.video;
    if (value != null) {
      result
        ..add('video')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.vote_average;
    if (value != null) {
      result
        ..add('vote_average')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    value = object.vote_count;
    if (value != null) {
      result
        ..add('vote_count')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    return result;
  }

  @override
  SearchMoviesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchMoviesDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'adult':
          result.adult = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'backdrop_path':
          result.backdrop_path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'genre_ids':
          result.genre_ids.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(num)]))!
              as BuiltList<Object?>);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num?;
          break;
        case 'original_language':
          result.original_language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'original_title':
          result.original_title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'popularity':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num?;
          break;
        case 'poster_path':
          result.poster_path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'release_date':
          result.release_date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'video':
          result.video = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'vote_average':
          result.vote_average = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num?;
          break;
        case 'vote_count':
          result.vote_count = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num?;
          break;
      }
    }

    return result.build();
  }
}

class _$SearchMoviesData extends SearchMoviesData {
  @override
  final bool? adult;
  @override
  final String? backdrop_path;
  @override
  final BuiltList<num> genre_ids;
  @override
  final num? id;
  @override
  final String? original_language;
  @override
  final String? original_title;
  @override
  final String? overview;
  @override
  final num? popularity;
  @override
  final String? poster_path;
  @override
  final String? release_date;
  @override
  final String? title;
  @override
  final bool? video;
  @override
  final num? vote_average;
  @override
  final num? vote_count;

  factory _$SearchMoviesData(
          [void Function(SearchMoviesDataBuilder)? updates]) =>
      (new SearchMoviesDataBuilder()..update(updates))._build();

  _$SearchMoviesData._(
      {this.adult,
      this.backdrop_path,
      required this.genre_ids,
      this.id,
      this.original_language,
      this.original_title,
      this.overview,
      this.popularity,
      this.poster_path,
      this.release_date,
      this.title,
      this.video,
      this.vote_average,
      this.vote_count})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        genre_ids, r'SearchMoviesData', 'genre_ids');
  }

  @override
  SearchMoviesData rebuild(void Function(SearchMoviesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchMoviesDataBuilder toBuilder() =>
      new SearchMoviesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchMoviesData &&
        adult == other.adult &&
        backdrop_path == other.backdrop_path &&
        genre_ids == other.genre_ids &&
        id == other.id &&
        original_language == other.original_language &&
        original_title == other.original_title &&
        overview == other.overview &&
        popularity == other.popularity &&
        poster_path == other.poster_path &&
        release_date == other.release_date &&
        title == other.title &&
        video == other.video &&
        vote_average == other.vote_average &&
        vote_count == other.vote_count;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, adult.hashCode);
    _$hash = $jc(_$hash, backdrop_path.hashCode);
    _$hash = $jc(_$hash, genre_ids.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, original_language.hashCode);
    _$hash = $jc(_$hash, original_title.hashCode);
    _$hash = $jc(_$hash, overview.hashCode);
    _$hash = $jc(_$hash, popularity.hashCode);
    _$hash = $jc(_$hash, poster_path.hashCode);
    _$hash = $jc(_$hash, release_date.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, video.hashCode);
    _$hash = $jc(_$hash, vote_average.hashCode);
    _$hash = $jc(_$hash, vote_count.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SearchMoviesData')
          ..add('adult', adult)
          ..add('backdrop_path', backdrop_path)
          ..add('genre_ids', genre_ids)
          ..add('id', id)
          ..add('original_language', original_language)
          ..add('original_title', original_title)
          ..add('overview', overview)
          ..add('popularity', popularity)
          ..add('poster_path', poster_path)
          ..add('release_date', release_date)
          ..add('title', title)
          ..add('video', video)
          ..add('vote_average', vote_average)
          ..add('vote_count', vote_count))
        .toString();
  }
}

class SearchMoviesDataBuilder
    implements Builder<SearchMoviesData, SearchMoviesDataBuilder> {
  _$SearchMoviesData? _$v;

  bool? _adult;
  bool? get adult => _$this._adult;
  set adult(bool? adult) => _$this._adult = adult;

  String? _backdrop_path;
  String? get backdrop_path => _$this._backdrop_path;
  set backdrop_path(String? backdrop_path) =>
      _$this._backdrop_path = backdrop_path;

  ListBuilder<num>? _genre_ids;
  ListBuilder<num> get genre_ids =>
      _$this._genre_ids ??= new ListBuilder<num>();
  set genre_ids(ListBuilder<num>? genre_ids) => _$this._genre_ids = genre_ids;

  num? _id;
  num? get id => _$this._id;
  set id(num? id) => _$this._id = id;

  String? _original_language;
  String? get original_language => _$this._original_language;
  set original_language(String? original_language) =>
      _$this._original_language = original_language;

  String? _original_title;
  String? get original_title => _$this._original_title;
  set original_title(String? original_title) =>
      _$this._original_title = original_title;

  String? _overview;
  String? get overview => _$this._overview;
  set overview(String? overview) => _$this._overview = overview;

  num? _popularity;
  num? get popularity => _$this._popularity;
  set popularity(num? popularity) => _$this._popularity = popularity;

  String? _poster_path;
  String? get poster_path => _$this._poster_path;
  set poster_path(String? poster_path) => _$this._poster_path = poster_path;

  String? _release_date;
  String? get release_date => _$this._release_date;
  set release_date(String? release_date) => _$this._release_date = release_date;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  bool? _video;
  bool? get video => _$this._video;
  set video(bool? video) => _$this._video = video;

  num? _vote_average;
  num? get vote_average => _$this._vote_average;
  set vote_average(num? vote_average) => _$this._vote_average = vote_average;

  num? _vote_count;
  num? get vote_count => _$this._vote_count;
  set vote_count(num? vote_count) => _$this._vote_count = vote_count;

  SearchMoviesDataBuilder();

  SearchMoviesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _adult = $v.adult;
      _backdrop_path = $v.backdrop_path;
      _genre_ids = $v.genre_ids.toBuilder();
      _id = $v.id;
      _original_language = $v.original_language;
      _original_title = $v.original_title;
      _overview = $v.overview;
      _popularity = $v.popularity;
      _poster_path = $v.poster_path;
      _release_date = $v.release_date;
      _title = $v.title;
      _video = $v.video;
      _vote_average = $v.vote_average;
      _vote_count = $v.vote_count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchMoviesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchMoviesData;
  }

  @override
  void update(void Function(SearchMoviesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchMoviesData build() => _build();

  _$SearchMoviesData _build() {
    _$SearchMoviesData _$result;
    try {
      _$result = _$v ??
          new _$SearchMoviesData._(
              adult: adult,
              backdrop_path: backdrop_path,
              genre_ids: genre_ids.build(),
              id: id,
              original_language: original_language,
              original_title: original_title,
              overview: overview,
              popularity: popularity,
              poster_path: poster_path,
              release_date: release_date,
              title: title,
              video: video,
              vote_average: vote_average,
              vote_count: vote_count);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'genre_ids';
        genre_ids.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SearchMoviesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
