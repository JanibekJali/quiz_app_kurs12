import 'package:flutter/material.dart';
import 'package:quiz_app_kurs12/data/local_data/quiz_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool buutubu = false;
  void userdinJoobu(bool userJoobu) {
    final jooptor = quizData.joopAlipKel();
    if (userJoobu == jooptor) {
      iconkalar.add(
        Icon(
          Icons.check,
          size: 50,
          color: Colors.green,
        ),
      );
    } else {
      iconkalar.add(
        Icon(
          Icons.close,
          size: 50,
          color: Colors.red,
        ),
      );
    }
    quizData.otkoz();
    if (quizData.suroonuAlipKel() == '') {
      buutubu = true;
    }
    setState(() {});
  }

  List<Icon> iconkalar = [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buutubu == true
                ? AlertDialog(
                    title: Text("Buttu!"),
                    actions: [
                      TextButton(
                          onPressed: () {
                            buutubu = false;
                            iconkalar = [];
                            quizData.kairabashta();
                            setState(() {});
                          },
                          child: const Text("Kaira bashta"))
                    ],
                  )
                : Text(
                    quizData.suroonuAlipKel(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                userdinJoobu(true);
              },
              child: Container(
                color: Color(0xff4CB050),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 100,
                    vertical: 10,
                  ),
                  child: Text(
                    'Tuura',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                userdinJoobu(false);
              },
              child: Container(
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 66,
                    vertical: 10,
                  ),
                  child: Text(
                    'Tuura emes',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Row(children: iconkalar)
          ],
        ),
      ),
    );
  }

  showAlert(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Buttu!"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
