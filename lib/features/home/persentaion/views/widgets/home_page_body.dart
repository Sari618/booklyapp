import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/persentaion/views/widgets/best_sellet_list_view.dart';
import 'package:bookly_app/features/home/persentaion/views/widgets/custom_appbar.dart';
import 'package:bookly_app/features/home/persentaion/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: CustomAppBar(),
              ),
              FeatureBooksListView(),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle18.copyWith(fontFamily: kGtSectraFine),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
        SliverFillRemaining(child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: BestSellerListView(),
        )),
      ],
    );
  }
}

