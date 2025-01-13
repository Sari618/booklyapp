import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/persentaion/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/persentaion/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/persentaion/views/widgets/custom_item_view.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
      var width = MediaQuery.of(context).size.width;
    return Column(children: [
             Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.25),
                  child: CustomBookImage(),
                ),
                const SizedBox(height: 43),
                Text(
                  'The Jungle Book',
                  style: Styles.textStyle30.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Opacity(
                  opacity: 0.7,
                  child: Text(
                    'Rudyard Kipling',
                    style: Styles.textStyle18.copyWith(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                const BookRateing(mainAxisAlignment: MainAxisAlignment.center),
                 const SizedBox(height: 37),
                  const BooksAction(),
    ],);
  }
}

