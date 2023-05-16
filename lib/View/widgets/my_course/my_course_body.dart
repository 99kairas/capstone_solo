import 'package:flutter/material.dart';

class MyCourseBody extends StatelessWidget {
  const MyCourseBody({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 31, vertical: 15),
              child: Container(
                height: 98,
                // margin: const EdgeInsets.symmetric(vertical: 15),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // color: Colors.grey,
                    border: Border.all(
                      color: Colors.grey,
                    )),
                child: Row(
                  children: [
                    Container(
                      width: 74,
                      height: 74,
                      margin: const EdgeInsets.all(13),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('UI/UX'),
                        Text('4 / 5 Lesson'),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        const Center(
          child: Text('Complete'),
        ),
      ],
    );
  }
}
