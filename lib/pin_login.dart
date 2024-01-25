import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class pin_login extends StatefulWidget {
  const pin_login({super.key});

  @override
  _pinLogin createState() => _pinLogin();
}

class _pinLogin extends State<pin_login> {
  String passpin = '';

  void addPin(String value) {
    setState(() {
      if (passpin.length < 6) {
        passpin += value;
      }
    });
  }

  void removePin() {
    setState(() {
      if (passpin.isNotEmpty) {
        passpin = passpin.substring(0, passpin.length - 1);
      }
    });
  }

  void clearPin() {
    setState(() {
      passpin = '';
    });
  }

  Widget buildLogo(IconData icon, String label) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Icon(icon, size: 55.0),
            SizedBox(
              height: 10.0,
            ),
            Text(
              label,
              style: GoogleFonts.roboto(
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget Button(String num, String texnum) {
    return InkWell(
      onTap: () => addPin(num),
      child: Container(
        width: 65.0,
        height: 65.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.5,
            color: Color(0xFFb6b3b6),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              num,
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
                height: 0.9,
              ),
            ),
            Text(
              texnum,
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 13.0,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget removeButton() {
    return InkWell(
      onTap: removePin,
      child: Container(
        width: 65.0,
        height: 65.0,
        alignment: Alignment.center,
        child: Icon(Icons.backspace_outlined, size: 25.0),
      ),
    );
  }

  Widget clearButton() {
    return InkWell(
      onTap: clearPin,
      child: Container(
        width: 65.0,
        height: 65.0,
        alignment: Alignment.center,
        child: Icon(Icons.clear, size: 25.0),
      ),
    );
  }

  Widget PIN() {
    double size = 17;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Button('1', 'one'),
            SizedBox(width: size),
            Button('2', 'two'),
            SizedBox(width: size),
            Button('3', 'three'),
          ],
        ),
        SizedBox(height: size),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Button('4', 'four'),
            SizedBox(width: size),
            Button('5', 'five'),
            SizedBox(width: size),
            Button('6', 'six'),
          ],
        ),
        SizedBox(height: size),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Button('7', 'seven'),
            SizedBox(width: size),
            Button('8', 'eight'),
            SizedBox(width: size),
            Button('9', 'nine'),
          ],
        ),
        SizedBox(height: size),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            clearButton(),
            SizedBox(width: size),
            Button('0', 'zero'),
            SizedBox(width: size),
            removeButton(),
          ],
        ),
      ],
    );
  }

  Widget PINdisplay() {
    return Text(
      passpin.padRight(6, '_'),
      style: GoogleFonts.roboto(
        fontSize: 19.3,
        fontWeight: FontWeight.w400,
        color: Color(0xFF757375),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildLogo(Icons.security, "PIN LOGIN"),
            PINdisplay(),
            PIN(),
          ],
        ),
      ),
    );
  }
}
