import 'package:bookly_app/features/home/persentaion/views/widgets/best_seller_list_view_iteam.dart';
import 'package:flutter/material.dart';

class BooksListViewIteam extends StatelessWidget {
  const BooksListViewIteam({super.key});

  @override
  Widget build(BuildContext context) {
    
    return ListView.builder(

      physics: NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: BestSellerListViewIteam(),
        );
      },
    );
  }
}
