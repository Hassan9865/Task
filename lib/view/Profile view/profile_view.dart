import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:task/view/Profile%20view/profile_viewModel.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => ProfileViewmodel(),
        builder: (context, ProfileViewmodel viewModel, child) {
          return Scaffold();
        });
  }
}
