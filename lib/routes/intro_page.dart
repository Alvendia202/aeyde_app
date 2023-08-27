import 'package:aeyde_app/routes/menu_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment:  CrossAxisAlignment.center,
              verticalDirection: VerticalDirection.down,
                children:[
                  const SizedBox (height:25),
            Text ('aeyde',
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize: 28,
                    color: Colors.black,
                  ),
                ),
                  const SizedBox (height:25),

                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Image.asset('assets/images/front.jpg'),
                  ),

                  const SizedBox (height:10),

                  Text ('fashion│trend│style',
                    style: GoogleFonts.dmSerifDisplay(
                    fontSize: 28,
                    color: Colors.black,
                  ),
                ),
            
                  const SizedBox (height:30),
                  //getstarted_button
                  Column(
                    children: <Widget>[
                      MaterialButton(
                        minWidth: 100,
                        height: 50,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MenuPage()));
                        },
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(0)),
                        child: const Text(
                          "Get started",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 12),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                  ]
                ),
              ],
            ),
        ),
    );
  }
}