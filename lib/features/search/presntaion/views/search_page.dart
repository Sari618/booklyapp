import 'package:bookly_app/features/search/presntaion/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: SearchViewBody()));
  }
}
