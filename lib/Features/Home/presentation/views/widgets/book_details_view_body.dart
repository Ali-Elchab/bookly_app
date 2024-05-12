import 'package:bookly_app/Features/Home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/books_details_section.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: [
      SliverFillRemaining(
        hasScrollBody: false,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              CustomBookDetailsAppBar(),
              SizedBox(height: 30.0),
              BooksDetailsSection(),
              SizedBox(height: 37.0),
              BooksAction(),
              Expanded(child: SizedBox(height: 50.0)),
              SimilarBooksSection(),
              SizedBox(height: 40.0),
            ],
          ),
        ),
      )
    ]);
  }
}
