import 'package:bookly_app/core/utils/widgets/custom_error.dart';
import 'package:bookly_app/core/utils/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/persentaion/manger/Featured_Books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/persentaion/views/widgets/custom_item_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(
                          AppRouter.kBookDetailsView,
                          extra: state.books[index],
                        );
                      },
                      child: CustomBookImage(
                          imageUrl: state
                              .books[index].volumeInfo.imageLinks.thumbnail),
                    ),
                  );
                }),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMassage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
