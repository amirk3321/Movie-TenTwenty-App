

import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


Widget movieImage({String? imageUrl,File? image}){
  if (image==null){
    if (imageUrl==null || imageUrl=="") {
      return Image.asset(
        'assets/default_profile.png',
        fit: BoxFit.cover,
      );
    } else {
      return CachedNetworkImage(
        imageUrl: imageUrl,
        fit: BoxFit.cover,
          progressIndicatorBuilder: (context, url, downloadProgress) =>
              SizedBox(
                  height: 50,
                  width: 50,
                  child: Image.asset("assets/InkblotLoadingLogo.png")),
        errorWidget: (context, url, error) => Icon(Icons.error),
      );
    }
  }else{
    return ClipRRect(   borderRadius: BorderRadius.circular(50),child: Image.file(image,fit: BoxFit.cover,));
  }
}

Widget moviePoster({String? imageUrl,File? image}){
  if (image==null){
    if (imageUrl==null || imageUrl=="") {
      return Image.asset(
        'assets/poster.png',
        fit: BoxFit.cover,
      );
    } else {
      return ClipRRect(
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.cover,
          progressIndicatorBuilder: (context, url, downloadProgress) =>
              const SizedBox(
                  height: 50,
                  width: 50,
                  child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      );
    }
  }else{
    return ClipRRect(   borderRadius: BorderRadius.circular(50),child: Image.file(image,fit: BoxFit.cover,));
  }
}