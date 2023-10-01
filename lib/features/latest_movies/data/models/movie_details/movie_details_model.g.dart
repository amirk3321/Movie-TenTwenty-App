// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MovieDetailsModel> _$movieDetailsModelSerializer =
    new _$MovieDetailsModelSerializer();

class _$MovieDetailsModelSerializer
    implements StructuredSerializer<MovieDetailsModel> {
  @override
  final Iterable<Type> types = const [MovieDetailsModel, _$MovieDetailsModel];
  @override
  final String wireName = 'MovieDetailsModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, MovieDetailsModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'genres',
      serializers.serialize(object.genres,
          specifiedType: const FullType(
              BuiltList, const [const FullType(MovieGenresData)])),
      'production_companies',
      serializers.serialize(object.production_companies,
          specifiedType: const FullType(
              BuiltList, const [const FullType(MovieProductionCompaniesData)])),
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
    value = object.budget;
    if (value != null) {
      result
        ..add('budget')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    value = object.homepage;
    if (value != null) {
      result
        ..add('homepage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    value = object.imdb_id;
    if (value != null) {
      result
        ..add('imdb_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
    value = object.revenue;
    if (value != null) {
      result
        ..add('revenue')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    value = object.runtime;
    if (value != null) {
      result
        ..add('runtime')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tagline;
    if (value != null) {
      result
        ..add('tagline')
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
  MovieDetailsModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieDetailsModelBuilder();

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
        case 'budget':
          result.budget = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num?;
          break;
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MovieGenresData)]))!
              as BuiltList<Object?>);
          break;
        case 'homepage':
          result.homepage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num?;
          break;
        case 'imdb_id':
          result.imdb_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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
        case 'production_companies':
          result.production_companies.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(MovieProductionCompaniesData)
              ]))! as BuiltList<Object?>);
          break;
        case 'release_date':
          result.release_date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'revenue':
          result.revenue = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num?;
          break;
        case 'runtime':
          result.runtime = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tagline':
          result.tagline = serializers.deserialize(value,
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

class _$MovieDetailsModel extends MovieDetailsModel {
  @override
  final bool? adult;
  @override
  final String? backdrop_path;
  @override
  final num? budget;
  @override
  final BuiltList<MovieGenresData> genres;
  @override
  final String? homepage;
  @override
  final num? id;
  @override
  final String? imdb_id;
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
  final BuiltList<MovieProductionCompaniesData> production_companies;
  @override
  final String? release_date;
  @override
  final num? revenue;
  @override
  final num? runtime;
  @override
  final String? status;
  @override
  final String? tagline;
  @override
  final String? title;
  @override
  final bool? video;
  @override
  final num? vote_average;
  @override
  final num? vote_count;

  factory _$MovieDetailsModel(
          [void Function(MovieDetailsModelBuilder)? updates]) =>
      (new MovieDetailsModelBuilder()..update(updates))._build();

  _$MovieDetailsModel._(
      {this.adult,
      this.backdrop_path,
      this.budget,
      required this.genres,
      this.homepage,
      this.id,
      this.imdb_id,
      this.original_language,
      this.original_title,
      this.overview,
      this.popularity,
      this.poster_path,
      required this.production_companies,
      this.release_date,
      this.revenue,
      this.runtime,
      this.status,
      this.tagline,
      this.title,
      this.video,
      this.vote_average,
      this.vote_count})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        genres, r'MovieDetailsModel', 'genres');
    BuiltValueNullFieldError.checkNotNull(
        production_companies, r'MovieDetailsModel', 'production_companies');
  }

  @override
  MovieDetailsModel rebuild(void Function(MovieDetailsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieDetailsModelBuilder toBuilder() =>
      new MovieDetailsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovieDetailsModel &&
        adult == other.adult &&
        backdrop_path == other.backdrop_path &&
        budget == other.budget &&
        genres == other.genres &&
        homepage == other.homepage &&
        id == other.id &&
        imdb_id == other.imdb_id &&
        original_language == other.original_language &&
        original_title == other.original_title &&
        overview == other.overview &&
        popularity == other.popularity &&
        poster_path == other.poster_path &&
        production_companies == other.production_companies &&
        release_date == other.release_date &&
        revenue == other.revenue &&
        runtime == other.runtime &&
        status == other.status &&
        tagline == other.tagline &&
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
    _$hash = $jc(_$hash, budget.hashCode);
    _$hash = $jc(_$hash, genres.hashCode);
    _$hash = $jc(_$hash, homepage.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, imdb_id.hashCode);
    _$hash = $jc(_$hash, original_language.hashCode);
    _$hash = $jc(_$hash, original_title.hashCode);
    _$hash = $jc(_$hash, overview.hashCode);
    _$hash = $jc(_$hash, popularity.hashCode);
    _$hash = $jc(_$hash, poster_path.hashCode);
    _$hash = $jc(_$hash, production_companies.hashCode);
    _$hash = $jc(_$hash, release_date.hashCode);
    _$hash = $jc(_$hash, revenue.hashCode);
    _$hash = $jc(_$hash, runtime.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, tagline.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, video.hashCode);
    _$hash = $jc(_$hash, vote_average.hashCode);
    _$hash = $jc(_$hash, vote_count.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MovieDetailsModel')
          ..add('adult', adult)
          ..add('backdrop_path', backdrop_path)
          ..add('budget', budget)
          ..add('genres', genres)
          ..add('homepage', homepage)
          ..add('id', id)
          ..add('imdb_id', imdb_id)
          ..add('original_language', original_language)
          ..add('original_title', original_title)
          ..add('overview', overview)
          ..add('popularity', popularity)
          ..add('poster_path', poster_path)
          ..add('production_companies', production_companies)
          ..add('release_date', release_date)
          ..add('revenue', revenue)
          ..add('runtime', runtime)
          ..add('status', status)
          ..add('tagline', tagline)
          ..add('title', title)
          ..add('video', video)
          ..add('vote_average', vote_average)
          ..add('vote_count', vote_count))
        .toString();
  }
}

class MovieDetailsModelBuilder
    implements Builder<MovieDetailsModel, MovieDetailsModelBuilder> {
  _$MovieDetailsModel? _$v;

  bool? _adult;
  bool? get adult => _$this._adult;
  set adult(bool? adult) => _$this._adult = adult;

  String? _backdrop_path;
  String? get backdrop_path => _$this._backdrop_path;
  set backdrop_path(String? backdrop_path) =>
      _$this._backdrop_path = backdrop_path;

  num? _budget;
  num? get budget => _$this._budget;
  set budget(num? budget) => _$this._budget = budget;

  ListBuilder<MovieGenresData>? _genres;
  ListBuilder<MovieGenresData> get genres =>
      _$this._genres ??= new ListBuilder<MovieGenresData>();
  set genres(ListBuilder<MovieGenresData>? genres) => _$this._genres = genres;

  String? _homepage;
  String? get homepage => _$this._homepage;
  set homepage(String? homepage) => _$this._homepage = homepage;

  num? _id;
  num? get id => _$this._id;
  set id(num? id) => _$this._id = id;

  String? _imdb_id;
  String? get imdb_id => _$this._imdb_id;
  set imdb_id(String? imdb_id) => _$this._imdb_id = imdb_id;

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

  ListBuilder<MovieProductionCompaniesData>? _production_companies;
  ListBuilder<MovieProductionCompaniesData> get production_companies =>
      _$this._production_companies ??=
          new ListBuilder<MovieProductionCompaniesData>();
  set production_companies(
          ListBuilder<MovieProductionCompaniesData>? production_companies) =>
      _$this._production_companies = production_companies;

  String? _release_date;
  String? get release_date => _$this._release_date;
  set release_date(String? release_date) => _$this._release_date = release_date;

  num? _revenue;
  num? get revenue => _$this._revenue;
  set revenue(num? revenue) => _$this._revenue = revenue;

  num? _runtime;
  num? get runtime => _$this._runtime;
  set runtime(num? runtime) => _$this._runtime = runtime;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _tagline;
  String? get tagline => _$this._tagline;
  set tagline(String? tagline) => _$this._tagline = tagline;

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

  MovieDetailsModelBuilder();

  MovieDetailsModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _adult = $v.adult;
      _backdrop_path = $v.backdrop_path;
      _budget = $v.budget;
      _genres = $v.genres.toBuilder();
      _homepage = $v.homepage;
      _id = $v.id;
      _imdb_id = $v.imdb_id;
      _original_language = $v.original_language;
      _original_title = $v.original_title;
      _overview = $v.overview;
      _popularity = $v.popularity;
      _poster_path = $v.poster_path;
      _production_companies = $v.production_companies.toBuilder();
      _release_date = $v.release_date;
      _revenue = $v.revenue;
      _runtime = $v.runtime;
      _status = $v.status;
      _tagline = $v.tagline;
      _title = $v.title;
      _video = $v.video;
      _vote_average = $v.vote_average;
      _vote_count = $v.vote_count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieDetailsModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MovieDetailsModel;
  }

  @override
  void update(void Function(MovieDetailsModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MovieDetailsModel build() => _build();

  _$MovieDetailsModel _build() {
    _$MovieDetailsModel _$result;
    try {
      _$result = _$v ??
          new _$MovieDetailsModel._(
              adult: adult,
              backdrop_path: backdrop_path,
              budget: budget,
              genres: genres.build(),
              homepage: homepage,
              id: id,
              imdb_id: imdb_id,
              original_language: original_language,
              original_title: original_title,
              overview: overview,
              popularity: popularity,
              poster_path: poster_path,
              production_companies: production_companies.build(),
              release_date: release_date,
              revenue: revenue,
              runtime: runtime,
              status: status,
              tagline: tagline,
              title: title,
              video: video,
              vote_average: vote_average,
              vote_count: vote_count);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'genres';
        genres.build();

        _$failedField = 'production_companies';
        production_companies.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MovieDetailsModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
