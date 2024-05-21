import 'package:appjam/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'add_words.dart';

class MyWords extends StatefulWidget {
  @override
  State<MyWords> createState() => _MyWordsState();
}

class _MyWordsState extends State<MyWords> {
  final CollectionReference myCollection =
      FirebaseFirestore.instance.collection('flutter66database');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (AppBar(
        title: Text('Your Vocabulary'),
        elevation: 0,
        backgroundColor: AppColors.appBlueLightColor,
      )),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: StreamBuilder(
                  stream: myCollection.snapshots(),
                  builder: (_, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return CircularProgressIndicator(); // Veriler yükleniyor.
                    }

                    if (snapshot.hasError) {
                      return Text('Veriler alınamıyor: ${snapshot.error}');
                    }

                    if (!snapshot.hasData) {
                      return Text('Veri yok');
                    }

                    return ListView(
                      children:
                          snapshot.data!.docs.map((DocumentSnapshot document) {
                        final data = document.data() as Map<String, dynamic>;
                        return Row(
                          //crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.appBlueLightColor,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              margin: EdgeInsets.all(3),
                              padding: EdgeInsets.all(10),
                              width: 150,
                              child: Container(
                                child: Text(data["en"]),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.appBlueLightColor,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              margin: EdgeInsets.all(3),
                              padding: EdgeInsets.all(10),
                              width: 150,
                              child: Container(
                                child: Text(data["tr"]),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        );
                      }).toList(),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddWordsPage()));
        },
        child: Icon(Icons.add),
        backgroundColor: AppColors.appBlueLightColor,
      ),
    );
  }
}
