import 'package:flutter/material.dart';

import '../reading_content_view.dart';


class ReadingContainer extends StatelessWidget {
  //const ReadingContainer({super.key});
  ReadingContainer(this.imageName, this.header, this.listenumarasi);
  final String imageName;
  final String header;
  final String listenumarasi;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ReadingContent(imageName,listenumarasi),
            ));
      },
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xff6f8ed7),
            ),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              width: 120,
              height: 120,
              child: Image(
                image: AssetImage(imageName),
                fit: BoxFit.fill,
              ),
            ),
            //Text("Glowing Sea Creatures Have Been Lighting Up the Oceans for More Than Half a Billion Years"),

            Flexible(
                child: Text(
                  header,
                  style: TextStyle(fontSize: 15),
                )),
          ],
        ),
      ),
    );
  }
}
