import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/persentaion/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';


class BestSellerListViewIteam extends StatelessWidget {
  const BestSellerListViewIteam({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  image: AssetImage(AssetsData.testImage),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child:  Text(
                    'Harry Potter and the Goblet of Fire',
                    
                    style: Styles.textStyle20.copyWith(
                      fontFamily: kGtSectraFine),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
             const   SizedBox(height: 3),
                const Text('J.K. Rowling', style: Styles.textStyle14),
                     const     SizedBox(height: 3),
                Row(
                  children: [
                    Text( '19.99 €', style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold)
                    ),
                  const  Spacer(),
                   const BookRateing(),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}