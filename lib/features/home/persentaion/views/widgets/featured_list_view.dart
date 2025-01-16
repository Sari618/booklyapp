import 'package:bookly_app/features/home/persentaion/views/widgets/custom_item_view.dart';
import 'package:flutter/material.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
<<<<<<< HEAD
          return const Padding(          
=======
          return const Padding(
>>>>>>> 7c67bee81a6ebee800b2b71e8fd9277caec84559
            padding:  EdgeInsets.symmetric(horizontal: 8.0),
            child:  CustomBookImage(),
          );
        },
      ),
    );
  }
}
