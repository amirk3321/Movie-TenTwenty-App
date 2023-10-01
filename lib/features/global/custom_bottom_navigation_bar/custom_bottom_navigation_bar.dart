



import 'package:flutter/material.dart';
import 'package:movie_tentwenty_app/features/global/custom_bottom_navigation_bar/domain/entities/tentwenty_bottom_navigation_bar_item_entity.dart';
import 'package:movie_tentwenty_app/features/global/theme/style.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final Function(int) onChangeIndex;
  final int currentIndex;
  const CustomBottomNavigationBar({super.key,required this.onChangeIndex,required this.currentIndex});

  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.only(left: 27,right: 27),
     child: Row(
       mainAxisAlignment: MainAxisAlignment.center,
       children: TenTwentyBottomNavigationBarItemEntity.bottomNavBarItems.map((navItem) {
        int index = TenTwentyBottomNavigationBarItemEntity.bottomNavBarItems.indexOf(navItem);

        return Expanded(
          child: InkWell(
            onTap: (){
              onChangeIndex(index);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(navItem.icon,color: index==currentIndex?colorWhite:colorWhite.withOpacity(.5)),
                const SizedBox(height: 8,),
                Text(navItem.title,style: TextStyle(color: index==currentIndex?colorWhite:colorWhite.withOpacity(.5),fontSize: 10),),
              ],
            ),
          ),
        );

       }).toList(),
     ),
   );
  }
}
