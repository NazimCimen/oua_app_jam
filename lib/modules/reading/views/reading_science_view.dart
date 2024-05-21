import 'package:flutter/material.dart';
import 'package:appjam/modules/reading/views/widgets/reading_container.dart';

import '../readinglist.dart';
import 'reading_history_view.dart';

class ReadingPageScience extends StatelessWidget {
  const ReadingPageScience({super.key});

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
                      onPressed: () {},
                      child: Text(
                        "Science",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      )),
                  TextButton(
                      onPressed: () {Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ReadingPageHistory())
                      );},
                      child: Text(
                        "History",
                        style: TextStyle(fontSize: 18),
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
            SizedBox(height: 20,),
            Column(
              children: [
                ReadingContainer('assets/images/glowing.png',
                    'Glowing Sea Creatures Have Been Lighting Up the Oceans for More Than Half a Billion Years',readingListScience[0]),
                ReadingContainer('assets/images/spacewalk.jpg',
                    'The Inside Story of the First Untethered Spacewalk',readingListScience[1]),
                ReadingContainer('assets/images/geothermal.jpg',
                    'Is Geothermal Power Heating Up as an Energy Source?',readingListScience[2]),
                ReadingContainer('assets/images/eclipse.png',
                    'How Do Animals React to a Total Solar Eclipse?',readingListScience[3]),
                 ],
            )
          ],
        ),
      ),
    );
  }
}

