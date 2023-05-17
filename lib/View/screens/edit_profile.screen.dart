import 'package:capstone_solo/View/widgets/edit_profile/edit_profile_appbar.dart';
import 'package:capstone_solo/View/widgets/edit_profile/edit_profile_body.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EditProfileAppBar(),
              EditProfileBody(),
            ],
          ),
        ),
      ),
    );
  }
}
