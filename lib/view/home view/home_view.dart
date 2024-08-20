import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:task/view/home%20view/home_viewModel.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => HomeViewmodel(),
        builder: (context, HomeViewmodel viewModel, child) {
          return Scaffold();
        });
  }
}
