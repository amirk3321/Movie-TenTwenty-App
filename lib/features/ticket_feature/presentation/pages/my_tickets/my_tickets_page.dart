import 'package:flutter/material.dart';
import 'package:movie_tentwenty_app/features/global/entities/app_entity.dart';
import 'package:movie_tentwenty_app/features/ticket_feature/presentation/pages/my_ticket_details/my_ticket_details_page.dart';
import 'package:movie_tentwenty_app/features/ticket_feature/presentation/widgets/my_ticket_list_single_item.dart';

class MyTicketsPage extends StatelessWidget {
  final AppEntity appEntity;

  const MyTicketsPage({Key? key, required this.appEntity}) : super(key: key);

  String _getMovieTitle() {
    if (appEntity.searchMoviesData != null) {
      return appEntity.searchMoviesData!.title!;
    } else {
      return appEntity.upcomingMovieData!.title.toString();
    }
  }

  String _getMovieReleaseDate() {
    if (appEntity.searchMoviesData != null) {
      return appEntity.searchMoviesData!.release_date!;
    } else {
      return appEntity.upcomingMovieData!.release_date.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My Tickets"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          reverseTransitionDuration:
                              const Duration(milliseconds: 600),
                          transitionDuration: const Duration(seconds: 1),
                          pageBuilder: (_, __, ___) {
                            return MyTicketDetailsPage(
                              appEntity: AppEntity(
                                tag: "ticketImgAnimation$index",
                                seatNumber: appEntity.seatNumber,
                                rowName: appEntity.rowName,
                                upcomingMovieData: appEntity.upcomingMovieData,
                                searchMoviesData: appEntity.searchMoviesData,
                              ),
                            );
                          },
                        ),
                      );
                    },
                    child: MyTicketListSingleItem(
                      appEntity: AppEntity(
                        tag: "ticketImgAnimation$index",
                        seatNumber: appEntity.seatNumber,
                        rowName: appEntity.rowName,
                        upcomingMovieData: appEntity.upcomingMovieData,
                        searchMoviesData: appEntity.searchMoviesData,
                      ),
                    ));
              },
            ))
          ],
        ));
  }
}
