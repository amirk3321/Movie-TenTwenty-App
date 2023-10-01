import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';


import 'models.dart';

part 'serializer.g.dart';

@SerializersFor([
  DatesData,
  UpcomingMovieData,
  UpcomingMoviesModel,
  /// Movie Details Genre
  GenreData,
  GenreModel,
  // Movie details
  MovieGenresData,
  MovieDetailsModel,
  MovieProductionCompaniesData,
  /// Video Model
  VideoPlayModel,
  VideoPlayData,

  SearchMoviesData,
  SearchMoviesModel,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

T deserialize<T>(dynamic value) => serializers.deserializeWith<dynamic>(
    serializers.serializerForType(T)!, value);

BuiltList<T> deserializeListOf<T>(dynamic value) => BuiltList.from(
    value.map((value) => deserialize<T>(value)).toList(growable: false));
