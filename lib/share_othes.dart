import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShareOthers extends StatelessWidget {
  const ShareOthers({Key? key}) : super(key: key);

  Widget _textEntry(String header,String text, String hint, String smallText, int lines, bool dropDown) {
    return Row(
      children: [
        Expanded(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15,
                ),
                Text(
                  header,
                  style: const TextStyle(
                      fontSize: 14.5,
                      color: Colors.black38,
                      fontWeight: FontWeight.w800),
                ),
                const SizedBox(
                  height: 5,
                ),
                dropDown ? DropdownButtonFormField(
                  style: GoogleFonts.rubik(
                    textStyle:
                    const TextStyle(fontSize: 15 , color: Colors.black38), fontWeight: FontWeight.w500),
                  items: [text].map(
                        (val) {
                      return DropdownMenuItem<String>(
                        value: val,
                        child: Text(val),
                      );
                    },
                  ).toList(),
                  onChanged: (val){},
                  value: "Select",
                  decoration: _inputDec(hint),
                )  : TextField(style: GoogleFonts.rubik(
                    textStyle:
                    const TextStyle(fontSize: 15 , color: Colors.black38), fontWeight: FontWeight.w500),
                    minLines: lines,
                    maxLines: lines,
                    decoration: _inputDec(hint),
                    controller:  TextEditingController(text: text),
                    ),
                    const SizedBox(
                  height: 5,
                ),
                Visibility(
                  visible: (smallText.isNotEmpty),
                  child: Text(
                  smallText,
                  style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black38,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                 ),

              ]
          ),
        ),
      ],
    );
  }

  InputDecoration _inputDec(String hint){
    return InputDecoration(
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
        fillColor: Colors.white);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Color(0xff344955),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          height: 56.0,
          child: Row(children: <Widget>[
            IconButton(
              onPressed: null,
              icon: Icon(Icons.menu),
              color: Colors.white,
            ),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add),
              color: Colors.white,
            )
          ]),
        ),
      ),
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
                          fontSize: 18, fontWeight: FontWeight.w900),
                    ),
                  ),
                ]),
          ),


        //
        // shadowColor: Colors.white,
      ),
      body: SingleChildScrollView(
    child:SizedBox(
    height: 690,
      child:Column(
       // mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        //    mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Padding(
            padding: const EdgeInsets.fromLTRB(25, 25, 25, 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                _textEntry("Problem Name","UI/UX Design", "Enter a title",
                    "Maximum 30 characters (12 remaining)", 1,false),
                _textEntry("Descriptions", "Please, the logo must represent the brand character, "
                    "positioning, and the client USP and ESP","",
                    "Maximum 300 characters (132 remaining)", 8, false),
                _textEntry("Option A","", "Enter a option name",
                    "", 1,false),
                _textEntry("Option B","", "Enter a option name",
                    "", 1, false),
                _textEntry("Category","Select", "",
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
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
      floatingActionButton:  FloatingActionButton(
    backgroundColor: Colors.lightBlueAccent,
    child: Icon(Icons.add),
    onPressed: () {
      showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        backgroundColor: Colors.white,
        context: context,
        builder: (context) => ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
          child: Container(


            color: Colors.white,
      child:Wrap(
            alignment: WrapAlignment.start,
            children:[
                Column(

                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Padding(
                          padding: EdgeInsets.fromLTRB(25, 25, 25, 10),
                          child:
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:[
                      Text(
                          "Share with other's",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Color.fromARGB(255, 95, 100, 222),
                              fontSize: 18, fontWeight: FontWeight.w900),
                        ),
                      Spacer(),
                      Icon(Icons.close,
                        size: 32,
                      ),
      ],
                      ),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(25, 25, 25, 0),
                        child:
                      Text(
                        "Copy Link",
                        style: const TextStyle(
                            fontSize: 14.5,
                            color: Colors.black38,
                            fontWeight: FontWeight.w800),
                      ),
        ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(25, 0, 25, 10),
                          child:
                              
                              Row(
                                children:[

                      TextField(style: GoogleFonts.rubik(
                          textStyle:
                          const TextStyle(fontSize: 15 , color: Colors.black38), fontWeight: FontWeight.w500),

                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12, width: 1.0),
                              borderRadius: BorderRadius.only(topLeft:
                              Radius.circular(10.0), bottomLeft:Radius.circular(10.0)
                              ),
                            ),
                            border: const OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.black12, width: 1.0),
                              borderRadius: BorderRadius.only(topLeft:
                              Radius.circular(10.0), bottomLeft:Radius.circular(10.0)
                              ),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.black12, width: 1.0),
                              borderRadius: BorderRadius.only(topLeft:
                                Radius.circular(10.0), bottomLeft:Radius.circular(10.0)
                              ),
                            ),
                            filled: true,
                            hintStyle: const TextStyle(
                                color: Colors.black12,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                            hintText: "",
                            fillColor: Colors.white),
                        controller:  TextEditingController(text: "https://problemshare/pollshare"),
                      ),
      // Container(
      // decoration: BoxDecoration(
      // boxShadow: [
      // BoxShadow(color: Colors.black12, spreadRadius: 3),
      // ],
      // borderRadius:BorderRadius.only(topRight:
      // Radius.circular(10.0), bottomRight:Radius.circular(10.0)
      // ),
      // color: Colors.white,
      //
      // ),
      // ),
      ],),
                      ),

                    ]),

          ],
      ),

                )
      ),






      );
    },
    ),
    );
  }
}
