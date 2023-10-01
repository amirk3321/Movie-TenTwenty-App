import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_tentwenty_app/features/global/entities/app_entity.dart';
import 'package:movie_tentwenty_app/features/global/images/movie_image.dart';
import 'package:movie_tentwenty_app/features/global/provider/genres_const.dart';
import 'package:movie_tentwenty_app/features/global/provider/provider.dart';
import 'package:movie_tentwenty_app/features/global/theme/style.dart';
import 'package:movie_tentwenty_app/features/latest_movies/presentation/cubit/movie_details/movie_details_cubit.dart';
import 'package:movie_tentwenty_app/features/latest_movies/presentation/pages/movie_details_page/component/text_button.dart';
import 'package:movie_tentwenty_app/features/video_Play/presentation/cubit/video_play_cubit.dart';
import 'package:movie_tentwenty_app/on_generate_route/page_const/page_const.dart';

class MovieDetailsPage extends StatefulWidget {
  final AppEntity appEntity;

  const MovieDetailsPage({super.key, required this.appEntity});

  @override
  State<MovieDetailsPage> createState() => _MovieDetailsPageState();
}

class _MovieDetailsPageState extends State<MovieDetailsPage> {

  @override
  void initState() {
    BlocProvider.of<MovieDetailsCubit>(context).movieDetails(
        movieId: getMovieId());
    BlocProvider.of<VideoPlayCubit>(context).playVideoRefresh().then((value) {
      BlocProvider.of<VideoPlayCubit>(context).playVideo(
          movieId: getMovieId());
    });
    super.initState();
  }


  String getMovieId() {

    if (widget.appEntity.searchMoviesData !=null){
      return widget.appEntity.searchMoviesData!.id.toString();
    }else{
      return widget.appEntity.upcomingMovieData!.id.toString();
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<MovieDetailsCubit, MovieDetailsState>(
        builder: (context, movieDetailState) {
          if (movieDetailState is MovieDetailsLoaded) {
            final movieDetails = movieDetailState.movieDetails;
            return CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: 420,
                  automaticallyImplyLeading: false,
                  title: Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(Icons.arrow_back_ios,
                                color: colorWhite)),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Text(
                            "${movieDetails.title}",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(color: colorWhite),
                          ),
                        ),
                      ],
                    ),
                  ),
                  flexibleSpace: FlexibleSpaceBar(
                    background: Stack(
                      children: [
                        Positioned.fill(
                          child: Hero(
                            tag: widget.appEntity.tag!,
                            child: moviePoster(
                                imageUrl: loadMovieDBImage(movieDetails.backdrop_path==null?null:movieDetails.backdrop_path!)),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          left: 0,
                          top: 420 / 2.40,
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.black.withOpacity(0.0),
                                  // Transparent black at the top (0%)
                                  Colors.black,
                                  // Solid black at the bottom (100%)
                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "In theaters ${movieDetails.release_date}",
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: colorWhite),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, PageConst.reservationPage, arguments: widget.appEntity);

                                },
                                child: Container(
                                  height: 50,
                                  width: 243,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: color61C3F2,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Text(
                                    "Get Tickets",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: colorWhite),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              BlocBuilder<VideoPlayCubit, VideoPlayState>(
                                builder: (context, videoPlayState) {
                                  if (videoPlayState is VideoPlayLoaded) {
                                    final videoPlayData =
                                        videoPlayState.videoPlayModel;
                                    return InkWell(
                                      onTap: () {
                                        if (videoPlayData.results.isNotEmpty &&
                                            videoPlayData.results.first.key !=
                                                null) {
                                          Navigator.pushNamed(
                                              context, PageConst.playVideo,
                                              arguments: videoPlayData);
                                        } else {
                                          toast(
                                              message:
                                                  "${movieDetails.title} Trailer not yet available");
                                        }
                                      },
                                      child: Container(
                                        height: 50,
                                        width: 243,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: color61C3F2),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.play_arrow_rounded,
                                              color: colorWhite,
                                            ),
                                            Text(
                                              "Watch Trailer",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  color: colorWhite),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }

                                  return Container(
                                    height: 50,
                                    width: 243,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: color61C3F2),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.play_arrow_rounded,
                                          color: colorWhite,
                                        ),
                                        Text(
                                          "Watch Trailer",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: colorWhite),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  floating: true,
                  snap: true,
                  pinned: true,
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                SliverList(
                    delegate: SliverChildListDelegate([
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Genres",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Wrap(
                          children: movieDetails.genres.map((item) {
                            final index = movieDetails.genres.indexOf(item);
                            return Container(
                              margin: EdgeInsets.all(2),
                              child: TextButtonWidget(
                                  title: item.name!,
                                  color: genresColorConst.containsKey(item.name)
                                      ? genresColorConst[item.name]!
                                      : colorE26CA5),
                            );
                          }).toList(),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Divider(color: colorBlack.withOpacity(.2)),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Genres",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "${movieDetails.overview}",
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  )
                ])),
              ],
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
