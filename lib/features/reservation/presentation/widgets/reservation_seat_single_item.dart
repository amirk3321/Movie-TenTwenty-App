
import 'package:flutter/material.dart';

class ReservationSeatSingleItem extends StatelessWidget {
  final String value;
  const ReservationSeatSingleItem({Key? key,required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white,width: 1.2)
      ),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Text("$value"),
    );
  }
}
