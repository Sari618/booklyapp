import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/persentaion/views/widgets/custom_appbar.dart';
import 'package:bookly_app/features/home/persentaion/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
       FeatureBooksListView(),
          SizedBox(height: 50,),
       Text('Best Seller',style: Styles.titleMedium,),
        ],
      ),
    );
  }
}

