import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewProblem extends StatelessWidget {
  const NewProblem({Key? key}) : super(key: key);

  Widget _textEntry(String header,String text, String hint, String smallText, int lines) {
    return Row(
      children: [
        Expanded(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  header,
                  style: const TextStyle(
                      fontSize: 16.5,
                      color: Colors.black26,
                      fontWeight: FontWeight.w800),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextField(
                  style: GoogleFonts.rubik(
                    textStyle:
                    const TextStyle(fontSize: 16 , color: Colors.black26), fontWeight: FontWeight.w500),
                  minLines: lines,
                  maxLines: lines,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12, width: 1.0),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      border: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black12, width: 1.0),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black12, width: 1.0),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      filled: true,
                      hintStyle: const TextStyle(
                          color: Colors.black12,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                      hintText: hint,
                      fillColor: Colors.white),
                      controller:  TextEditingController(text: text),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  smallText,
                  style: const TextStyle(
                      fontSize: 13.5,
                      color: Colors.black26,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                const SizedBox(
                  height: 15,
                ),
              ]
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 8, 0),
            child: IconButton(
              icon: Image.asset(
                "assets/images/profile.png",
                scale: 1.1,
              ),
              onPressed: () {
                //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => null ));
              },
            ),
          ),
        ],

        title: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                  child: Text(
                    'Create New Problem',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w900),
                  ),
                ),
              ]),
        ),

        //
        // shadowColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        //    mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 30, 25, 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                _textEntry("Title","", "Enter a title",
                    "Maximum 30 characters (12 remaining)", 1),
                _textEntry("Descriptions", "Please, the logo must represent the brand character, "
                    "positioning, and the client USP and ESP","",
                    "Maximum 300 characters (132 remaining)", 9),
              ],
            ),
          ),

          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(38, 0, 38, 20),
                        child: SizedBox(
                          // height: 40,
                          child: TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                    const Color.fromARGB(255, 95, 100, 222),
                                  ),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          side: const BorderSide(
                                            color: Color.fromARGB(
                                                255, 95, 100, 222),
                                          )))),
                              child: const Text("Publish",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 15))),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
