
import 'package:flutter/material.dart';

class SettingsDetail extends StatelessWidget {
  const SettingsDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 300,
                        ),
                        Text(
                        " jfworriwp,"
                        ),
                      ],
                    ),
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