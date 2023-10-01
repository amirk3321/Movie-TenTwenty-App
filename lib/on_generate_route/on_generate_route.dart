import 'package:flutter/material.dart';
import 'package:movie_tentwenty_app/features/global/entities/app_entity.dart';
import 'package:movie_tentwenty_app/features/global/serializer/models.dart';
import 'package:movie_tentwenty_app/features/latest_movies/data/models/upcoming_movies/upcoming_movie_data.dart';
import 'package:movie_tentwenty_app/features/latest_movies/presentation/pages/movie_details_page/movie_details_page.dart';
import 'package:movie_tentwenty_app/features/payment_method/presentation/payment_method_page.dart';
import 'package:movie_tentwenty_app/features/reservation/presentation/pages/reservation_page.dart';
import 'package:movie_tentwenty_app/features/reservation/presentation/pages/select_seat_reservation_page.dart';
import 'package:movie_tentwenty_app/features/ticket_feature/presentation/pages/my_tickets/my_tickets_page.dart';
import 'package:movie_tentwenty_app/features/video_Play/data/model/video_play_model.dart';
import 'package:movie_tentwenty_app/features/video_Play/presentation/pages/play_youtube_video_page.dart';
import 'package:movie_tentwenty_app/features/video_Play/presentation/pages/single_embed_video_play_page.dart';
import 'package:movie_tentwenty_app/on_generate_route/page_const/page_const.dart';



class OnGenerateRoute {
  static Route<dynamic> route(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        {
          return materialBuilder(
            widget: const ErrorPage(),
          );
        }
      case PageConst.movieDetailsPage:
        {
          if (args is AppEntity){
            return materialBuilder(
              widget: MovieDetailsPage(appEntity: args,),
            );
          }else{
            return materialBuilder(
              widget: const ErrorPage(),
            );
          }
        }
      case PageConst.reservationPage:
        {
          if (args is AppEntity){
            return materialBuilder(
              widget: ReservationPage(appEntity: args,),
            );
          }else{
            return materialBuilder(
              widget: const ErrorPage(),
            );
          }
        }
      case PageConst.paymentMethod:
        {
          if (args is AppEntity){
            return materialBuilder(
              widget: PaymentMethodPage(appEntity: args,),
            );
          }else{
            return materialBuilder(
              widget: const ErrorPage(),
            );
          }
        }
      case PageConst.ticketPage:
        {
          if (args is AppEntity){
            return materialBuilder(
              widget: MyTicketsPage(appEntity: args,),
            );
          }else{
            return materialBuilder(
              widget: const ErrorPage(),
            );
          }
        }

        case PageConst.selectReservationPage:
        {
          if (args is AppEntity){
            return materialBuilder(
              widget: SelectSeatReservationPage(appEntity: args,),
            );
          }else{
            return materialBuilder(
              widget: const ErrorPage(),
            );
          }
        }
        case PageConst.playVideo:
        {
          if (args is VideoPlayModel){
            return materialBuilder(
              widget: PlayYoutubeVideoPage(videoPlay: args,),
            );
          }else{
            return materialBuilder(
              widget: const ErrorPage(),
            );
          }
        }
      default:
        return materialBuilder(
          widget: const ErrorPage(),
        );
    }
  }
}

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("error"),
      ),
      body: const Center(
        child: Text("error"),
      ),
    );
  }
}

MaterialPageRoute materialBuilder({required Widget widget}) {
  return MaterialPageRoute(builder: (_) => widget);
}
