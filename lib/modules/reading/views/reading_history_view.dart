import 'package:appjam/modules/reading/readinglist.dart';
import 'package:appjam/modules/reading/views/reading_science_view.dart';
import 'package:flutter/material.dart';

import 'widgets/reading_container.dart';

class ReadingPageHistory extends StatelessWidget {
  const ReadingPageHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reading"),
        backgroundColor: Color(0xff6f8ed7),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ReadingPageScience())
                        );
                      },
                      child: Text(
                        "Science",
                        style: TextStyle(fontSize: 18),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "History",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Travel",
                        style: TextStyle(fontSize: 18),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Art",
                        style: TextStyle(fontSize: 18),
                      )),

                ],
              ),
            ),
            Column(
              children: [
                ReadingContainer('assets/images/footprint.png',
                    'Tracking Humans’ First Footsteps in North America',readingListHistory[0]),
                ReadingContainer('assets/images/mary.png',
                    'The Myth of ‘Bloody Mary,’ England’s First Queen',readingListHistory[1]),
                ReadingContainer('assets/images/museum.png',
                    'London National Gallery Is Redefining What It Means to Be a ‘National’ Museum',readingListHistory[2]),

              ],
            )
          ],
        ),
      ),
    );
  }
}

