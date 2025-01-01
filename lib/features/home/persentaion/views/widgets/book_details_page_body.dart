import 'package:bookly_app/features/home/persentaion/views/widgets/books_details_section.dart';
import 'package:bookly_app/features/home/persentaion/views/widgets/custom_book_details_appbar.dart';
import 'package:bookly_app/features/home/persentaion/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children:const[
                CustomBookDetailsAppbar(),
                BooksDetailsSection(),

                Expanded(child: SizedBox(height: 50)),
                SimlarBooksSection(),
                SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

