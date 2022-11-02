import 'package:example/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'new_problem.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0.5,
          iconTheme: IconThemeData(
            color: Colors.grey,
          ),
        ),
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.rubikTextTheme(),
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Colors.white,
          onPrimary: Color.fromARGB(210, 95, 100, 222),
          primaryContainer: Colors.white,
          secondary: Colors.grey,
          secondaryContainer: Colors.grey,
          onSecondary: Colors.grey,
          background: Colors.white,
          onBackground: Colors.grey,
          surface: Colors.white,
          onSurface: Colors.grey,
          error: Colors.grey,
          onError: Colors.grey,
        ),
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'Welcome!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

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
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
        const Expanded(
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
                      button("I need help", 38,0, Colors.white, const Color.fromARGB(255, 95, 100, 222),
                          const Color.fromARGB(255, 95, 100, 222))
                    ],
                  ),
            Row(
              children: [
                button("I want to help", 38,20, const Color.fromARGB(255, 95, 100, 222), Colors.transparent,
                    const Color.fromARGB(255, 95, 100, 222)),
              ],
            ),
            ],
              ),
          ),
          ],
        ),
      ),
    );
  }
}
