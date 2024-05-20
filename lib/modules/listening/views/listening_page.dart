import 'package:appjam/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

import 'youtube_player_widget.dart';

class ListeningPage extends StatelessWidget {
  const ListeningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listening"),
        backgroundColor: AppColors.appBlueLightColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            YoutubePlayerWidget('EPISODE 1', 'https://www.youtube.com/watch?v=RBXVa-Q-6GI'),
            YoutubePlayerWidget('EPISODE 2', 'https://www.youtube.com/watch?v=GJHQ5EFEkBs&t=141s'),
            YoutubePlayerWidget('EPISODE 3', 'https://www.youtube.com/watch?v=jPRqaJqYfbQ'),
            YoutubePlayerWidget('EPISODE 4', 'https://www.youtube.com/watch?v=MbJr4bpRiXE'),
            YoutubePlayerWidget('EPISODE 5', 'https://www.youtube.com/watch?v=a-xWUsgQ65o'),
            YoutubePlayerWidget('EPISODE 6', 'https://www.youtube.com/watch?v=NHnYqBwYqS4'),
            YoutubePlayerWidget('EPISODE 8', 'https://www.youtube.com/watch?v=wHk07D0ltMw'),
            YoutubePlayerWidget('EPISODE 9', 'https://www.youtube.com/watch?v=RSB8eDBnhEE'),
            YoutubePlayerWidget('EPISODE 10', 'https://www.youtube.com/watch?v=M2UC-FTmpGo'),

          ],
        ),
      ),
    );
  }
}
