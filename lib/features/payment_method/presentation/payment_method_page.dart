

import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:movie_tentwenty_app/features/global/entities/app_entity.dart';
import 'package:movie_tentwenty_app/features/global/images/movie_image.dart';
import 'package:movie_tentwenty_app/features/global/provider/provider.dart';
import 'package:movie_tentwenty_app/on_generate_route/page_const/hero_animation_const.dart';
import 'package:movie_tentwenty_app/on_generate_route/page_const/page_const.dart';

class PaymentMethodPage extends StatefulWidget {
  final AppEntity appEntity;
  const PaymentMethodPage({Key? key,required this.appEntity}) : super(key: key);

  @override
  State<PaymentMethodPage> createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {

  String _getMovieTitle() {
    if (widget.appEntity.searchMoviesData != null) {
      return widget.appEntity.searchMoviesData!.title!;
    } else {
      return widget.appEntity.upcomingMovieData!.title.toString();
    }
  }

  String _getMovieReleaseDate() {
    if (widget.appEntity.searchMoviesData != null) {
      return widget.appEntity.searchMoviesData!.release_date!;
    } else {
      return widget.appEntity.upcomingMovieData!.release_date.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment"),
      ),
      body: PageTransitionSwitcher(
        transitionBuilder: ( Widget child,
        Animation<double> animation,
        Animation<double> secondaryAnimation,){
          return FadeThroughTransition(
            animation: animation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              Card(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 20,),
                            Animate(
                              effects: const [
                                SlideEffect(begin: Offset(-1, 0),duration: Duration(milliseconds: 150)),
                              ],
                              child: Text(
                                _getMovieTitle(),
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Animate( effects: const [
                              SlideEffect(begin: Offset(-1, 0),duration: Duration(milliseconds: 200)),
                            ],child: Text(_getMovieReleaseDate())),

                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Animate( effects: const [
                                SlideEffect(begin: Offset(-1, 0),duration: Duration(milliseconds: 300)),
                              ],child: Text("Seat - ${widget.appEntity.rowName}${widget.appEntity.seatNumber} ( Cinetech + hall )")),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 150,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Hero(
                              tag: HeroAnimationConst.orderSummeryToPayMethodImgTag,
                              child: moviePoster(
                                  imageUrl: loadMovieDBImage(widget.appEntity.upcomingMovieData!.poster_path!)),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Animate(effects: const [
                FadeEffect(
                    curve: Curves.easeIn,
                    duration: Duration(
                      milliseconds: 400,
                    )
                ),
              ],child: const Text("Choose Your Payment Method",style: TextStyle(fontSize: 18))),
              const SizedBox(height: 10,),
              _paymentItem("assets/jazzcash_icon.png", "Jazz Cash",150),
              const SizedBox(height: 10,),
              _paymentItem("assets/easypaisa_icon.png", "Easy Paisa",250),
              const SizedBox(height: 10,),
              _paymentItem("assets/bank_icon.png", "Bank",350,color: Colors.black),
            ],
          ),
        ),
      ),
    );
  }

  Widget _paymentItem(String logo,String value,durationInMilliseconds,
      {Color? color}){
    return Animate(
      effects: [
        SlideEffect(begin: const Offset(-1, 0),duration: Duration(milliseconds: durationInMilliseconds)),
      ],
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, PageConst.ticketPage,arguments: widget.appEntity);
        },
        child: SizedBox(
          height: 100,
          child: Card(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Image.asset("$logo",color: color),
                  const SizedBox(width: 10,),
                  Text(value,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
