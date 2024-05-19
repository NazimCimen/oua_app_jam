import 'package:appjam/utils/constants/app_colors.dart';
import 'package:appjam/utils/extensions/size_extensions.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: AppColors.appBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              height: context.dynamicHeight(0.25),
              width: double.infinity,
              child: buildAppBar(context)),
          Text('Lets Begin Studying',
              style: Theme.of(context).textTheme.bodyLarge
              //  ?.copyWith(color: Colors.black),
              ),
          buildStudyingCard(text: 'Listening')
        ],
      ),
    );
  }

  Card buildStudyingCard({required String text}) {
    return Card(
      child: Row(
        children: [
          Text(
            text,
          )
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
