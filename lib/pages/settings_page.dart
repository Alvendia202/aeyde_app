// ignore_for_file: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:aeyde_app/routes/settings_routes/settingsheader.dart';
import 'package:aeyde_app/routes/settings_routes/settingslist.dart';
import 'package:aeyde_app/routes/settings_routes/settingtile.dart';
import 'package:aeyde_app/modules/theme.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});
 
@override
  State<SettingsPage> createState() => _SettingsPageState();
}
  get index => null;

class _SettingsPageState extends State<SettingsPage>{
 @override
  Widget build(BuildContext context) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [titleTextColor, contentTextColor],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [0.1, 0.9],
            ),
          ),
           child: SafeArea(
              child: Column(
                children: <Widget>[
                  const SettingsWidget(),
                  Expanded(
                    child: SingleChildScrollView(
                      child: 
                  ListView.builder(
                    shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.all(1),
                  itemCount: settings.length,
                  itemBuilder: (context,index) => SettingsTile(
                      settingsCard: settings[index], settings: SettingsCard,
                  ), 
              ),
                  ),
                  ),
                ],
              ),
                      ),
                      ),
            );
  }
}