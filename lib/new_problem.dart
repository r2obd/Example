import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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

        title:
    Center(
    child:Expanded(
          child:
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 2),
                child: Text('Create New Problem', textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w900),
                ),
              ),
            ]
        ),
    ),
    ),
        //
        // shadowColor: Colors.white,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          //    mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Expanded(
              flex:7,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(38, 0, 38, 0),
                child: Image.asset(
                  "assets/images/people_image.png",
                  fit: BoxFit.contain,
                  alignment: Alignment.center,
                ),
              ),
            ),

            Expanded(
              flex:1,
              child:
              Padding(
                padding: EdgeInsets.fromLTRB(70, 0, 70, 0),
                child: Text(
                  "Try to assign more tasks to your employees or "
                      "create a new project from scratch",
                  style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black38,
                      fontWeight: FontWeight.w600
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),


            Expanded(
              flex:2,
              child:
              Column(
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
                                    foregroundColor: MaterialStateProperty.all<Color>(
                                        Colors.white),
                                    backgroundColor: MaterialStateProperty.all<Color>(
                                      const Color.fromARGB(255, 95, 100, 222),
                                    ),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                            side: const BorderSide(color: Color.fromARGB(255, 95, 100, 222),)))),
                                child: const Text("Publish",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800, fontSize: 15))),
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
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
