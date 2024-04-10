import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nclima/widgets/loader_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF3C6FD1),
              Color(0xFF7CA9FF),
            ],
            stops: [0.25,0.87],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        ),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                child: Column(
                  children: [
                    iconAndTemperature()
                  ],
                ),
              ),
            ),
            const LoaderView(

            )
          ],
        ),
      ),
    );
  }

AppBar appBar(){
  return AppBar(
    title: const Text(''),
    actions: [
      IconButton(onPressed: (){}, 
      icon: const Icon(Icons.location_on_outlined))
    ],
  );
}

Widget iconAndTemperature(){
  return Column(
    children: [
      // sustituye con este widget despues weatherImage(),
      Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Image.asset('assets/images/clouds.png'),
      ),
      const Text('Current Date',
      style: TextStyle(
        fontSize: 17, color: Colors.white
      ),
      ),
      const Wrap(
        children: [
          Text('17', style: TextStyle(
            fontSize: 45,
            color: Colors.white,
            fontWeight: FontWeight.w900
          ),),
          Text(' o', style: TextStyle(
            color: Colors.white,
            fontFeatures: [FontFeature.subscripts()],
          ),),
          Text('Condition', style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w600
          ),),
        ],
      )
    ],
  );
}

Widget weatherImage(){
  return CachedNetworkImage(
    imageUrl: '',
    height: 120,
    width: 120,
    imageBuilder: (context, imageProvider){
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
        ),
      );
    },
    errorWidget: (context,url,error){
      return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Image.asset('assets/images/clouds.png'),
      );
    },
    placeholder: (context,url){
      return const Center(
        child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white,),
      );
    },
  );
}

}
