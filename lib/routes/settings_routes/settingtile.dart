import 'package:aeyde_app/routes/settings_routes/settingslist.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsTile extends StatelessWidget {
  final SettingsCard settingsCard;

  const SettingsTile({Key? key, 
  required this.settingsCard, 
  required settings}) : super(key: key);
  
  get icon => null;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
           Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              leading: Icon(
                size: 14,
                settingsCard.leadingIcon,
                color: Colors.black,
              ),
              title: Text(
                settingsCard.title,
                style: GoogleFonts.dmSerifDisplay(fontSize: 13),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min, // To make widgets aligned horizontally
                children: [
                settingsCard.actionButton,
              ],
              ),
            ),
          ),
        ],
                
    );
  }
}