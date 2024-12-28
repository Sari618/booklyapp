import 'package:bookly_app/features/home/persentaion/views/widgets/custom_appbar.dart';
import 'package:bookly_app/features/home/persentaion/views/widgets/custom_item_view.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
     FeatureBooksListView(),
      ],
    );
  }
}

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8.0),
            child:  FeatureListViewIteam(),
          );
        },
      ),
    );
  }
}