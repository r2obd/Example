import 'package:example/widgets.dart';
import 'package:flutter/material.dart';

class ShareOthers extends StatelessWidget {
  const ShareOthers({Key? key}) : super(key: key);

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
              onPressed: () {},
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
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                  ),
                ),
              ]),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 690,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 25, 25, 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    dataEntry("Problem Name", "UI/UX Design", "Enter a title",
                        "Maximum 30 characters (12 remaining)", 1, false),
                    dataEntry(
                        "Descriptions",
                        "Please, the logo must represent the brand character, "
                            "positioning, and the client USP and ESP", "",
                        "Maximum 300 characters (132 remaining)", 8, false),
                    dataEntry(
                        "Option A", "", "Enter a option name", "", 1, false),
                    dataEntry(
                        "Option B", "", "Enter a option name", "", 1, false),
                    dataEntry("Category", "Select", "", "", 1, true),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        button("Publish", 25,0, Colors.white, const Color.fromARGB(255, 95, 100, 222),
                          const Color.fromARGB(255, 95, 100, 222),)
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:  FloatingActionButton.extended(  label: const Text("Press to show Bottom Draw" ,
        style: TextStyle(color: Colors.white),),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            backgroundColor: Colors.white,
            context: context,
            builder: (context) =>
                SingleChildScrollView(
                  child: Container(
                    padding:
                    EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                    child:
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50)),
                      child: Container(
                        color: Colors.white,
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: [
                            Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(25, 25, 25, 10),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "Share with other's",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color:
                                              Color.fromARGB(255, 95, 100, 222),
                                              fontSize: 18,
                                              fontWeight: FontWeight.w900),
                                        ),
                                        Spacer(),
                                        Icon(
                                          Icons.close,
                                          size: 32,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Divider(
                                    color: Colors.grey,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(25, 10, 25, 0),
                                    child: Text(
                                      "Copy Link",
                                      style: TextStyle(
                                          fontSize: 14.5,
                                          color: Colors.black38,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
                                    child: socailLink(),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
                                    child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                        children: [
                                          social(const Color.fromARGB(
                                              255, 95, 100, 222),"assets/images/twitter.png"),
                                          social(Colors.black12,"assets/images/fb.png"),
                                          social(Colors.black12,"assets/images/insta.png"),
                                          social(Colors.black12,"assets/images/google.png"),
                                        ] ),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      button("Share", 25,0, Colors.white, const Color.fromARGB(255, 95, 100, 222),
                                          const Color.fromARGB(255, 95, 100, 222))
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      button("Skip", 25,0, const Color.fromARGB(255, 95, 100, 222),
                                          Colors.transparent, const Color.fromARGB(255, 95, 100, 222))
                                    ],
                                  ),
                                ]
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
          );
        },
      ),
    );
  }
}
