import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:task/view/search%20view/search_viewModel.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => SearchViewmodel(),
        builder: (context, SearchViewmodel viewModel, child) {
          return Scaffold(
            body: Center(
              child: Text(
                "This is Search Page",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
          );
        });
  }
}
