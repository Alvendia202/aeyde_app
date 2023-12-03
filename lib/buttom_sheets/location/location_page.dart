import 'package:flutter/material.dart';

class AddressCard extends StatefulWidget {
  final AddressCard addressList;

  const AddressCard({
    Key? key,
    required this.addressList,
    required location,
  }) : super(key: key);

  @override
  State<AddressCard> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressCard> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    var addressList;
    return Card(
      shape: selected
          ? RoundedRectangleBorder(
              side: BorderSide(color: Colors.blue, width: 2.0),
              borderRadius: BorderRadius.circular(4.0),
            )
          : RoundedRectangleBorder(
              side: BorderSide(color: Colors.white, width: 2.0),
              borderRadius: BorderRadius.circular(4.0),
            ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ListTile(
                  leading: Icon(
                    Icons.location_on,
                    size: 14,
                  ),
                  title: Text(
                    addressList.title
                    ), 
                  subtitle: Text(addressList.subtitle),
                  trailing: Row(
                    children: [
                      Checkbox(
                        value: selected,
                        onChanged: (value) {
                          setState(() {
                            selected = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}