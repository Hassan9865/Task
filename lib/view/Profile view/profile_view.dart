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
          return Scaffold(
            body: Center(
              child: Text(
                "This is Profile Page",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
          );
        });
  }
}
