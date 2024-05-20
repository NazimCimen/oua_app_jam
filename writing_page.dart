
import 'package:appjam_mlkit/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';


class WritingPage extends StatefulWidget {
  @override
  State<WritingPage> createState() => _WritingPageState();
}

class _WritingPageState extends State<WritingPage> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    getWords();
    counterLevel = 0;
  }

  Future<void> getWords() async {
    wordEn = [];
    wordTr = [];
    final CollectionReference myCollection =
    FirebaseFirestore.instance.collection('koleksiyon adi');
    QuerySnapshot querySnapshot =
    await myCollection.get();
    for (var doc in querySnapshot.docs) {
      setState(() {
        wordEn.add(doc.get("en"));
        wordTr.add(doc.get("tr"));
      });
    }
  }

  List<String> wordEn = [];
  List<String> wordTr = [];
  int counterLevel = 0;


  TextEditingController controllerAnswer = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return (wordEn.isEmpty || counterLevel >= wordEn.length) ? Container() :
    Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: kMainBlueColor,
          title: Text(
            "Writing",
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                ),
                //Text(counterLevel.toString()),
                //Text(wordEn[counterLevel]),
                Container(
                    child: Text("'" +
                        wordTr[counterLevel] +
                        "' kelimesinin İngilizce karşılığı nedir?")),
                SizedBox(
                  height: 30,
                ),
                TextFieldContainer(
                  child: TextFormField(
                    controller: controllerAnswer,
                    onEditingComplete: () => TextInput.finishAutofillContext(),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Cevap',
                        hintText: "Doğru cevabı giriniz..."),
                    onChanged: (value) {},
                    validator: (value) {
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                /*

                 */
                GestureDetector(
                  onTap:() {

                    setState(() {
                      counterLevel++;
                      //counterLevel++;
                      if (counterLevel + 1 <= wordEn.length) {
                        //counterLevel++;
                        print('counterLevel');
                        print(counterLevel);
                        print('wordEn.length');
                        print(wordEn.length);


                        ///////////////////////////////////////////////

                        if (controllerAnswer.text.trim() ==
                            wordEn[counterLevel - 1]) {
                          print("Tebrikler doğru bildiniz!");
                          print('counterLevel');
                          print(counterLevel);
                          print('wordEn.length');
                          print(wordEn.length);
                          print(wordEn[counterLevel]);
                          Fluttertoast.showToast(
                            msg: "Tebrikler doğru bildiniz!",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: kMainBlueColor,
                            textColor: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 18.0,
                          );
                        } else if (controllerAnswer.text.trim()
                            .toUpperCase() ==
                            wordEn[counterLevel - 1].toUpperCase() ||
                            controllerAnswer.text.trim().toLowerCase() ==
                                wordEn[counterLevel - 1].toLowerCase()
                        ) {
                          print("Tebrikler doğru bildiniz!");

                          print('counterLevel');
                          print(counterLevel);
                          print('wordEn.length');
                          print(wordEn.length);
                          print(wordEn[counterLevel]);
                          Fluttertoast.showToast(
                            msg: "Tebrikler doğru bildiniz!",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: kMainBlueColor,
                            textColor: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 18.0,
                          );
                        }


                        else {
                          print("Maalesef yanlış bildiniz!");
                          print('counterLevel');
                          print(counterLevel);
                          print('wordEn.length');
                          print(wordEn.length);
                          print(wordEn[counterLevel]);
                          Fluttertoast.showToast(
                            msg:
                            "Maalesef yanlış bildiniz! Doğru cevap '${wordEn[counterLevel -
                                1]}' olacaktı.",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: kMainBlueColor,
                            textColor: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 18.0,
                          );
                        }
                      }


                      if (counterLevel + 1 <= wordEn.length) {
                        getWords();
                        controllerAnswer.clear();
                      }
                      else {

                      }
                    });

                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: kMainBlueColor,
                    ),
                    margin: EdgeInsets.only(left:90,right: 90,top:40),
                    padding: EdgeInsets.all(15),

                    child: Center(
                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('OK'),
                          Icon(Icons.check),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    required this.child,
  }) : super();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}