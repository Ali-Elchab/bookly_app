import 'package:bookly_app/Features/Search/presentation/views/widgets/custom_search_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
      child: Column(
        children: [
          CustomSearchTextField(),
        ],
      ),
    );
  }
}