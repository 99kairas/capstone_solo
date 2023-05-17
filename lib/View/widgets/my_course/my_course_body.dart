import 'package:flutter/material.dart';
import 'package:simple_animation_progress_bar/simple_animation_progress_bar.dart';

class MyCourseBody extends StatelessWidget {
  const MyCourseBody({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        ListView.builder(
          itemCount: 15,
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('UI/UX'),
                        const SizedBox(height: 11),
                        const Text('4 / 5 Lesson'),
                        const SizedBox(height: 11),
                        SimpleAnimationProgressBar(
                          height: 8,
                          width: 181,
                          backgroundColor: Colors.blueGrey,
                          foregrondColor: Colors.blue,
                          ratio: 4 / 5,
                          direction: Axis.horizontal,
                          curve: Curves.fastLinearToSlowEaseIn,
                          duration: const Duration(seconds: 3),
                          borderRadius: BorderRadius.circular(10),
                        )
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
