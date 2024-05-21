import 'package:flutter/material.dart';


class ReadingContent extends StatelessWidget {
  String imagex;
  String readingText;
  ReadingContent(this.imagex,this.readingText);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body:SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.0),
          child: Column(
            children:  [
              Container(
                padding: EdgeInsets.all(10),
                child: Image(
                  image: AssetImage(
                    imagex,
                  ),
                ),
              ),

                  Text(
                    readingText,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
          ]
                ),
              ),

          ),
    )



    );
  }
}
