import 'package:flutter/material.dart';
import 'package:reviewrush/core/constants/color.dart';
import 'package:reviewrush/core/constants/fonts.dart';
import 'package:reviewrush/core/constants/spacing.dart';
import 'package:reviewrush/features/home/presentation/widgets/challenge_tile.dart';

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
                    const CircleAvatar(
                      backgroundColor: Colors.black12,
                      radius: 30,
                      child: Icon(Icons.import_contacts),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Your Workout",
                      style: fontmontserratTextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  const Icon(Icons.arrow_forward_ios_sharp),
                ],
              ),
              khbox10,
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                // add space between tiles
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  if (index == 2) {
                    return Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.teal.withOpacity(.5),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          height: 90,
                        ),
                        const SubjectsTiles(),
                        khbox10,
                      ],
                    );
                  }
                  return const Column(
                    children: [
                      SubjectsTiles(),
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

class SubjectsTiles extends StatelessWidget {
  const SubjectsTiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(7, 0, 0, 0), width: 2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 70,
            height: 60,
            decoration: const BoxDecoration(
                color: Color.fromARGB(43, 255, 235, 59),
                borderRadius: BorderRadius.all(Radius.circular(14))),
            child: const Center(
              child: Icon(
                Icons.hdr_strong,
                color: Colors.black87,
              ),
            ),
          ),
          // kwbox20,
          Text(
            "Push Ups",
            style: fontmontserratTextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const SizedBox(),
          Text(
            "5 set",
            style: fontmontserratTextStyle(
                fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
