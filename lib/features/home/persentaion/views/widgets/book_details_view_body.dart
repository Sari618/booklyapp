
import 'package:bookly_app/features/home/persentaion/views/widgets/custom_book_details_appbar.dart';
import 'package:flutter/material.dart';


class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: const Column(
        children: [
          CustomBookDetailsAppbar(),
      
        ],
      ),
    );
  }
}