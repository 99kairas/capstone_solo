import 'package:capstone_solo/View/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:simple_animation_progress_bar/simple_animation_progress_bar.dart';

class OnProgress {
  String? image;
  String? title;
  int? lesson;

  OnProgress({
    this.image,
    this.title,
    this.lesson,
  });
}

List<OnProgress> onProgress = [
  OnProgress(
      image:
          'https://banper.binsuslat.kemdikbud.go.id/ayo_kursus/front_assets/images/Infografis%20Ayo%20Kursus-1-100.jpg',
      title: 'Kursus A',
      lesson: 2),
  OnProgress(
      image:
          'https://blog.ecampuz.com/wp-content/uploads/2020/05/tips-kursus-online-ecampuz.jpg',
      title: 'Kursus B',
      lesson: 3),
  OnProgress(
      image:
          'https://kursus.kemdikbud.go.id/assets/images/custom/gambar1-01%201.png',
      title: 'Kursus C',
      lesson: 5),
];

class Complete {
  String? image;
  String? title;
  int? status;

  Complete({
    this.image,
    this.title,
    this.status,
  });
}

List<Complete> completed = [
  Complete(
    image:
        'https://banper.binsuslat.kemdikbud.go.id/ayo_kursus/front_assets/images/Infografis%20Ayo%20Kursus-1-100.jpg',
    title: 'Kursus A',
    status: 0,
  ),
  Complete(
    image:
        'https://blog.ecampuz.com/wp-content/uploads/2020/05/tips-kursus-online-ecampuz.jpg',
    title: 'Kursus B',
    status: 1,
  ),
  Complete(
    image:
        'https://kursus.kemdikbud.go.id/assets/images/custom/gambar1-01%201.png',
    title: 'Kursus C',
    status: 1,
  ),
];

class MyCourseBody extends StatelessWidget {
  const MyCourseBody({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        ListView.builder(
          itemCount: onProgress.length,
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
                        // color: Colors.red,
                        // image: DecorationImage(
                        //     image: NetworkImage('${onProgress[index].image}')),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.network('${onProgress[index].image}'),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${onProgress[index].title}'),
                        const SizedBox(height: 11),
                        Text('${onProgress[index].lesson} / 5 Lesson'),
                        const SizedBox(height: 11),
                        SimpleAnimationProgressBar(
                          height: 8,
                          width: 181,
                          backgroundColor: const Color(0x666EA8FE),
                          foregrondColor: Colors.blue,
                          ratio: onProgress[index].lesson! / 5,
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
        ListView.builder(
          itemCount: completed.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              height: 100,
              decoration: BoxDecoration(
                  border: Border.all(width: 0.5),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: SizedBox(
                      height: 74,
                      width: 74,
                      child: Image.network('${completed[index].image}'),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(right: 10, left: 24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: 104,
                                child: Text(
                                  '${completed[index].title}',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: blackTextStyle.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              SizedBox(
                                width: 104,
                                child: completed[index].status == 0
                                    ? Text(
                                        'Completed',
                                        style: greenTextStyle.copyWith(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign.end,
                                      )
                                    : Text(
                                        'Not Complete',
                                        style: redTextStyle.copyWith(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign.end,
                                      ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          InkWell(
                            onTap: completed[index].status == 1 ? null : () {},
                            child: Container(
                              width: double.infinity,
                              height: 34,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: completed[index].status == 1
                                      ? Colors.grey
                                      : Colors.blue),
                              child: Center(
                                child: Text(
                                  'See Certificate',
                                  style: whiteTextStyle,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
