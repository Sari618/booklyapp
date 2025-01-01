import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/persentaion/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class SimlarBooksSection extends StatelessWidget {
  const SimlarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You Can Also Like',
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 16),
        const SimilarBooksListView(),
      ],
    );
  }
}
