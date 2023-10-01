
import 'package:equatable/equatable.dart';

class ReservationSeatEntity extends Equatable{
  final String? rowName;
  final int? seats;
  final List<int>? freeSeats;
  final bool? isVip;

  ReservationSeatEntity({this.rowName, this.seats, this.freeSeats, this.isVip});

  @override
  List<Object?> get props => [rowName, seats, freeSeats];



  static List<ReservationSeatEntity> redLoungeSeats =[
    ReservationSeatEntity(
      rowName: "A",
      seats: 18,
      freeSeats: [],
    ),
    ReservationSeatEntity(
      rowName: "B",
      seats: 22,
      freeSeats: [],
    ),
    ReservationSeatEntity(
      rowName: "C",
      seats: 22,
      freeSeats: [],
    ),
    ReservationSeatEntity(
      rowName: "D",
      seats: 24,
      freeSeats: [],
    ),
    ReservationSeatEntity(
      rowName: "E",
      seats: 24,
      freeSeats: [],
    ),
    ReservationSeatEntity(
      rowName: "F",
      seats: 24,
      freeSeats: [],
    ),
    ReservationSeatEntity(
      rowName: "G",
      seats: 24,
      freeSeats: [],
    ),
    ReservationSeatEntity(
      rowName: "H",
      seats: 24,
      freeSeats: [],
    ),
    ReservationSeatEntity(
      rowName: "I",
      seats: 24,
      freeSeats: [],
    ),
    ReservationSeatEntity(
      isVip: true,
      rowName: "J",
      seats: 24,
      freeSeats: [],
    ),
  ];
  static List<ReservationSeatEntity> blueLoungeSeats =[
    ReservationSeatEntity(
      rowName: "A",
      seats: 11,
      freeSeats: [],
    ),
    ReservationSeatEntity(
      rowName: "B",
      seats: 11,
      freeSeats: [],
    ),
    ReservationSeatEntity(
      rowName: "C",
      seats: 11,
      freeSeats: [],
    ),
    ReservationSeatEntity(
      rowName: "D",
      seats: 11,
      freeSeats: [],
    ),
    ReservationSeatEntity(
      rowName: "E",
      seats: 11,
      freeSeats: [],
    ),
    ReservationSeatEntity(
      rowName: "F",
      seats: 11,
      freeSeats: [],
    ),
    ReservationSeatEntity(
      rowName: "G",
      seats: 11,
      freeSeats: [],
    ),
    ReservationSeatEntity(
      rowName: "H",
      seats: 11,
      freeSeats: [],
    ),
    ReservationSeatEntity(
      rowName: "I",
      seats: 11,
      freeSeats: [],
    ),
  ];
}