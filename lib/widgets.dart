import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget button(String text, double paddingSide,double paddingBottom, Color foreground, Color background,
    Color borderColor) {
  return Expanded(
    child: Padding(
      padding: EdgeInsets.fromLTRB(paddingSide, 0, paddingSide, paddingBottom),
      child: SizedBox(
        //  height: 40,
        child: TextButton(
            onPressed: () {},
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(
                  foreground,
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                  background,
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(
                          color: borderColor,
                        )))),
            child: Text(text,
                style: const TextStyle(
                    fontWeight: FontWeight.w500, fontSize: 15))),
      ),
    ),
  );
}

Widget social(Color border, String image) {
  return Container(
    height: 40,
    width: 40,
    margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          width: 2,
          color: border,
        )),
    child: Image.asset(
      image,
      fit: BoxFit.contain,
    ),
  );
}

Widget socailLink() {
  return Row(
    children: [
      Expanded(
        child: TextField(
          style: GoogleFonts.rubik(
              textStyle: const TextStyle(fontSize: 15, color: Colors.black38),
              fontWeight: FontWeight.w500),
          decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 25),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black12, width: 1.0),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5.0),
                    bottomLeft: Radius.circular(5.0)),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black12, width: 1.0),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5.0),
                    bottomLeft: Radius.circular(5.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black12, width: 1.0),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5.0),
                    bottomLeft: Radius.circular(5.0)),
              ),
              filled: true,
              hintStyle: TextStyle(
                  color: Colors.black12,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
              hintText: "",
              fillColor: Colors.white),
          controller:
          TextEditingController(text: "https://problemshare/pollshare"),
        ),
      ),
      SizedBox(
        width: 50,
        child: TextField(
          textAlignVertical: TextAlignVertical.center,
          style: GoogleFonts.rubik(
              backgroundColor: Colors.black12,
              textStyle: const TextStyle(fontSize: 15, color: Colors.black38),
              fontWeight: FontWeight.w500),
          decoration: InputDecoration(
            prefixIcon: Image.asset("assets/images/box.png"),
            contentPadding:
            const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black12, width: 1.0),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5.0),
                  bottomRight: Radius.circular(5.0)),
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black12, width: 1.0),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5.0),
                  bottomRight: Radius.circular(5.0)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black12, width: 1.0),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5.0),
                  bottomRight: Radius.circular(5.0)),
            ),
            filled: true,
            hintStyle: const TextStyle(
                color: Colors.black12,
                fontWeight: FontWeight.bold,
                fontSize: 14),
            hintText: "",
            fillColor: Colors.black12,
          ),
        ),
      ),
    ],
  );
}

  InputDecoration _inputDec(String hint) {
    return InputDecoration(
        contentPadding:
        const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black12, width: 1.0),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black12, width: 1.0),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black12, width: 1.0),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        filled: true,
        hintStyle: const TextStyle(
            color: Colors.black12, fontWeight: FontWeight.bold, fontSize: 14),
        hintText: hint,
        fillColor: Colors.white);
  }
Widget dataEntry(String header,String text, String hint, String smallText, int lines, bool dropDown) {
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


