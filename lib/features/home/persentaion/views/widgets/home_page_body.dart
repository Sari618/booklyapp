import 'package:bookly_app/features/home/persentaion/views/widgets/custom_appbar.dart';
import 'package:bookly_app/features/home/persentaion/views/widgets/custom_item_view.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [CustomAppBar(), CusotmIteamView()]);
  }
}

