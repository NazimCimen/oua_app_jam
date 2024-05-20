import 'package:appjam/utils/constants/app_styles.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter_button_type/flutter_button_type.dart';
import 'package:uuid/uuid.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AddWordsPage extends StatefulWidget {
  @override
  State<AddWordsPage> createState() => _AddWordsPageState();
}

class _AddWordsPageState extends State<AddWordsPage> {
  @override
  void dispose() {
    super.dispose();
  }

  TextEditingController controllerEn = TextEditingController();
  TextEditingController controllerTr = TextEditingController();
  TextEditingController controllerCat = TextEditingController();
  var uuid = Uuid();
  final CollectionReference wordCollection =
      FirebaseFirestore.instance.collection('flutter66database');

  Future<void> addFirestoreWords() async {
    String generatedUid = uuid.v4();

    await wordCollection.doc(generatedUid).set({
      'en': controllerEn.text,
      'tr': controllerTr.text,
      'id': generatedUid,
    }).then((value) => {
          Fluttertoast.showToast(
            msg: "Word has been uploaded!",
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: kMainBlueColor,
            textColor: Color.fromARGB(255, 255, 255, 255),
            fontSize: 18.0,
          )
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainBlueColor,
        title: Text(
          "Add Words",
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            TextFieldContainer(
              child: TextFormField(
                controller: controllerEn,
                onEditingComplete: () => TextInput.finishAutofillContext(),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'English',
                    hintText: "Enter the english word.."),
                onChanged: (value) {},
                validator: (value) {
                  return null;
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextFieldContainer(
              child: TextFormField(
                controller: controllerTr,
                onEditingComplete: () => TextInput.finishAutofillContext(),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Turkish',
                    hintText: "Enter the turkish word.."),
                onChanged: (value) {},
                validator: (value) {
                  return null;
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            IconButton(
                icon: const Icon(Icons.save),
                color: kMainBlueColor,

                //     buttonText: 'SAVE WORD',
                //     buttonIcon:
                onPressed: () {
                  addFirestoreWords().then((value) => {});
                })
          ],
        )),
      ),
    );
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
