import 'package:capstone_solo/View/theme/theme.dart';
import 'package:flutter/material.dart';

class MyCourseAppBar extends StatelessWidget {
  const MyCourseAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 16),
            child: Text(
              'My Course',
              style: blackTextStyle.copyWith(
                fontSize: 24.88,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TabBar(
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                child: Text(
                  "On Progress",
                  style: textStyle.copyWith(
                    fontSize: 14.4,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Complete",
                  style: textStyle.copyWith(
                    fontSize: 14.4,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
