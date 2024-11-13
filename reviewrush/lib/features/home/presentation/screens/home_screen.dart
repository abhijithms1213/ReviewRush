import 'package:flutter/material.dart';
import 'package:reviewrush/core/constants/color.dart';
import 'package:reviewrush/core/constants/fonts.dart';
import 'package:reviewrush/core/constants/spacing.dart';
import 'package:reviewrush/features/home/presentation/screens/subject_list_screen.dart';
import 'package:reviewrush/features/home/presentation/screens/task_creation_ui.dart';
import 'package:reviewrush/features/home/presentation/widgets/challenge_tile.dart';
import 'package:reviewrush/features/home/presentation/widgets/tile_ofsub_tiles.dart';
import 'package:reviewrush/features/settings/presentation/screens/profile.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                          color: colorLightColor,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: const Center(
                        child: Icon(
                          Icons.hdr_strong,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ScreenProfile(),
                          ),
                        );
                      },
                      child: const CircleAvatar(
                        backgroundColor: Colors.black12,
                        radius: 30,
                        child: Icon(Icons.import_contacts),
                      ),
                    ),
                    kwbox10,
                  ],
                ),
              ),
              khbox20,
              Text(
                "Hello Julian,",
                style: fontmontserratAlternatesTextStyle(fontSize: 20),
              ),
              khbox2,
              Text(
                "Ready for a challenge?",
                style: fontinterTextStyle(color: Colors.black38, fontSize: 16),
              ),
              khbox20,
              ChallengeTile(
                steps: 1,
                onTap: () {},
              ),
              khbox20,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Your subjects",
                      style: fontmontserratTextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  // const Icon(Icons.arrow_forward_ios_sharp),
                ],
              ),
              khbox10,
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                // add space between tiles
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  // if (index == 2) {
                  //   return Column(
                  //     children: [
                  //       Container(
                  //         decoration: BoxDecoration(
                  //             color: Colors.teal.withOpacity(.5),
                  //             borderRadius:
                  //                 const BorderRadius.all(Radius.circular(20))),
                  //         height: 90,
                  //       ),
                  //       const SubjectsTiles(),
                  //       khbox10,
                  //     ],
                  //   );
                  // }
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ScreenSubjectBased(),
                            ),
                          );
                        },
                        child: const SubjectsTiles(),
                      ),
                      khbox10,
                    ],
                  );
                },
                itemCount: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
