import 'package:example/share_others.dart';
import 'package:example/widgets.dart';
import 'package:flutter/material.dart';

class NewProblem extends StatelessWidget {
  const NewProblem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 8, 0),
            child: IconButton(
              icon: Image.asset("assets/images/profile.png",
                scale: 1.1,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ShareOthers() ));
              },
            ),
          ),
        ],
        title:  Center(
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
                          fontSize: 18, fontWeight: FontWeight.w900
                      ),
                    ),
                  ),
                ]
            ),
          ),
      ),
      body: SingleChildScrollView(
    child:SizedBox(
    height: 690,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 25, 25, 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                dataEntry("Title","", "Enter a title",
                    "Maximum 30 characters (12 remaining)", 1,false),
                dataEntry("Descriptions", "Please, the logo must represent the brand character, "
                    "positioning, and the client USP and ESP","",
                    "Maximum 300 characters (132 remaining)", 8, false),
                dataEntry("Option A","", "Enter a option name",
                    "", 1,false),
                dataEntry("Option B","", "Enter a option name",
                    "", 1, false),
                dataEntry("Category","Select", "",
                    "", 1, true),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
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
                                          )
                                      )
                                  )
                              ),
                              child: const Text("Publish",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 15)
                              )
                          ),
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
      ),
      ),
    );
  }
}