import 'package:flutter/material.dart';
import 'package:sec12/presentation/pages/pets_page.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  GlobalKey<FormState> key = GlobalKey();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          backgroundColor:   Colors.brown,
          foregroundColor: Colors.white,
          title: Text("Sign Up Page"),
        ),
        body: Form(
            key: key,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(hintText: " Name"),
                  validator: (String? text) {
                    if (text == null || text.isEmpty) {
                      return "field is requerd";
                    } else {
                      return null;
                    }
                  },
                  controller: name,
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: " Email"),
                  controller: email,
                  validator: (value) {
                    if (value == null ||
                        !value.contains("@") ||
                        !value.endsWith(".com") ||
                        value.length < 5 ||
                        value.startsWith("@")) {
                      return "invali email";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: " password"),
                  validator: (value) {
                    if (value == null || value.length < 6) {
                      return "password must be more than 6 charcter";
                    }
                  },
                  controller: password,
                ),
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (key.currentState!.validate()) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => petPage()));
                      }
                    },
                    child: Text(
                      "Sign Up",
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 15),
                    ))
              ],
            )));
  }
}
