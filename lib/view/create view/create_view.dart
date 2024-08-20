import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:task/view/create%20view/create_viewModel.dart';

class CreateView extends StatelessWidget {
  const CreateView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => CreateViewmodel(),
        builder: (context, CreateViewmodel viewModel, child) {
          return Scaffold();
        });
  }
}
