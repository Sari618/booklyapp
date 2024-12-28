import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CusotmIteamView extends StatelessWidget {
  const CusotmIteamView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.height * .23,
      child: AspectRatio(
        aspectRatio: 2.5 / 4,
        child: Container(
          
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image:const DecorationImage(
              image: AssetImage(AssetsData.testImage),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
