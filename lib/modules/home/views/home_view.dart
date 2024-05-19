import 'package:appjam/utils/constants/app_colors.dart';
import 'package:appjam/utils/extensions/size_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: context.dynamicHeight(0.25),
                width: double.infinity,
                child: buildAppBar(context)),
            /*   Text(
              'Lets Begin Studying',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Colors.black),
            ),*/
            Padding(
              padding: context.paddingAllMedium,
              child: Container(
                width: double.infinity,
                padding: context.paddingAllLow,
                height: context.dynamicHeight(0.2),
                decoration: BoxDecoration(
                    color: AppColors.appBlueColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Your Vocabulary   ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Save your vocabulary         \nand test yourself',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/images/vocabulary_img.png',
                          height: context.dynamicHeight(0.11),
                        ),
                      ],
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.appBlueLightColor,
                            shape: ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            fixedSize: Size(context.dynamicWidht(0.75),
                                context.dynamicHeight(0.05))),
                        onPressed: () {},
                        child: Text(
                          'Go to your vocabulary',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ))
                  ],
                ),
              ),
            ),
            Padding(
              padding: context.paddingAllLow,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildStudyingCard(
                          context: context,
                          text: '  Listening',
                          imagePath: 'assets/images/listening_img2.png'),
                      SizedBox(
                        width: context.dynamicWidht(0.035),
                      ),
                      buildStudyingCard(
                          context: context,
                          text: '  Speaking',
                          imagePath: 'assets/images/speaking_img2.png'),
                    ],
                  ),
                  SizedBox(
                    height: context.dynamicHeight(0.025),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildStudyingCard(
                          context: context,
                          text: '  Writing',
                          imagePath: 'assets/images/writing_img.png'),
                      SizedBox(
                        width: context.dynamicWidht(0.035),
                      ),
                      buildStudyingCard(
                          context: context,
                          text: '  Reading',
                          imagePath: 'assets/images/reading_img.png'),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildStudyingCard(
      {required String text,
      required BuildContext context,
      required String imagePath}) {
    return Container(
      padding: context.paddingAllMedium,
      decoration: BoxDecoration(
          color: AppColors.appBlueColor,
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: context.dynamicWidht(0.35),
          ),
          Text(text, style: Theme.of(context).textTheme.titleMedium)
        ],
      ),
    );
  }

  Container buildAppBar(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
        color: AppColors.appBlueColor,
      ),
      child: Padding(
        padding: context.paddingAllMedium,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '  Hey Alex',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      '  Ready to practice English today?',
                      style: Theme.of(context).textTheme.bodySmall,
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: context.dynamicHeight(0.02)),
            TextField(
              maxLines: 1,
              decoration: InputDecoration(
                  constraints:
                      BoxConstraints.loose(const Size(double.infinity, 50)),
                  filled: true,
                  fillColor: AppColors.appBlueLightColor,
                  border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  hintText: 'Search',
                  hintStyle: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Colors.white),
                  suffixIcon: const Icon(Icons.search_outlined),
                  suffixIconColor: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
