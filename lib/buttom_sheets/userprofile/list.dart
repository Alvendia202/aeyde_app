import 'package:aeyde_app/buttom_sheets/userprofile/properties.dart';
import 'package:flutter/material.dart';

class SettingsList extends ChangeNotifier {
 final List<ListItem> itemList = [
    ListItem('Orders', Icons.shopping_cart, ),
    ListItem('Purchased', Icons.done, ),
    ListItem('Location', Icons.location_on, ),
    ListItem('Feedback', Icons.feedback, ),
    ListItem('About', Icons.info, ),
  ];
}