import 'package:competion/new_problem.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'custom_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0.2,
          iconTheme: IconThemeData(
            color: Colors.grey, //change your color here
          ),
        ),
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.rubikTextTheme(),
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Colors.white,
          onPrimary: Color.fromARGB(210, 95, 100, 222),
          // Colors that are not relevant to AppBar in LIGHT mode:
          primaryVariant: Colors.white,
          secondary: Colors.white,
          secondaryVariant: Colors.white,
          onSecondary: Colors.grey,
          background: Colors.white,
          onBackground: Colors.grey,
          surface: Colors.white,
          onSurface: Colors.grey,
          error: Colors.grey,
          onError: Colors.grey,
        ),

        // appBarTheme: AppBarTheme(
        // color: const Color.fromARGB(255, 255, 255, 255),
        // //fromARGB(255, 95, 100, 222),
        // ),
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'Welcome!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


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
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const NewProblem() ));
              },
            ),
          ),
        ],

        title:
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 2),
            child: Text(
              widget.title,
              style: const TextStyle(fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 2, 0, 5),
            child: Text(
              'arage@12gmail.com',
              style: GoogleFonts.rubik(
                textStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ]
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
                          padding: const EdgeInsets.fromLTRB(38, 0, 38, 0),
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
                                child: const Text("I need help",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500, fontSize: 15))),
                          ),
                        ),
                      ),
                    ],
                  ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(38, 0, 38, 20),
                    child: SizedBox(
                    //  height: 40,
                      child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 95, 100, 222),),

                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: const BorderSide(color: Color.fromARGB(255, 95, 100, 222),)))),
                          child: const Text("I want to help",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 15))),
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
