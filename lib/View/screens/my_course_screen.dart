import 'package:capstone_solo/View/widgets/my_course/my_course_appbar.dart';
import 'package:capstone_solo/View/widgets/my_course/my_course_body.dart';
import 'package:flutter/material.dart';

class MyCourseScreen extends StatelessWidget {
  const MyCourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Column(
          children: [
            MyCourseAppBar(),
            Expanded(
              child: MyCourseBody(),
            ),
          ],
        ),
      ),
    );
  }
}
