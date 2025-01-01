import 'package:bookly_app/features/search/presntaion/views/widgets/custom_search_textfield.dart';
import 'package:flutter/material.dart';


class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(children: [
        CustomSearchTextField(),
      
      ],
      ),
    );
  }
}

