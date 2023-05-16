import 'package:capstone_solo/View/widgets/profile/profile_appbar.dart';
import 'package:capstone_solo/View/widgets/profile/profile_body.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileAppBar(),
            ProfileBody(),
          ],
        ),
      ),
    );
  }
}
