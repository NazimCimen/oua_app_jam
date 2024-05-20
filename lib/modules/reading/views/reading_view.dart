import 'package:flutter/material.dart';

class ReadingPageScience extends StatelessWidget {
  const ReadingPageScience({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reading."),
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
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )),
                  TextButton(
                      onPressed: () {},
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
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "deneme",
                        style: TextStyle(fontSize: 18),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "deneme",
                        style: TextStyle(fontSize: 18),
                      )),
                ],
              ),
            ),
            Text("Headline"),
            Column(
              children: [
                ReadingContainer('assets/images/glowing.png',
                    'Glowing Sea Creatures Have Been Lighting Up the Oceans for More Than Half a Billion Years'),
                ReadingContainer('assets/images/glowing.png',
                    'Glowing Sea Creatures Have Been Lighting Up the Oceans for More Than Half a Billion Years'),
                ReadingContainer('assets/images/glowing.png',
                    'Glowing Sea Creatures Have Been Lighting Up the Oceans for More Than Half a Billion Years'),
                ReadingContainer('assets/images/glowing.png',
                    'Glowing Sea Creatures Have Been Lighting Up the Oceans for More Than Half a Billion Years'),
                ReadingContainer('assets/images/glowing.png',
                    'Glowing Sea Creatures Have Been Lighting Up the Oceans for More Than Half a Billion Years'),
                ReadingContainer('assets/images/glowing.png',
                    'Glowing Sea Creatures Have Been Lighting Up the Oceans for More Than Half a Billion Years'),
                ReadingContainer('assets/images/glowing.png',
                    'Glowing Sea Creatures Have Been Lighting Up the Oceans for More Than Half a Billion Years'),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ReadingContainer extends StatelessWidget {
  //const ReadingContainer({super.key});
  ReadingContainer(this.imageName, this.header);
  final String imageName;
  final String header;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
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
