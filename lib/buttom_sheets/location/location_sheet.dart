import 'package:aeyde_app/buttom_sheets/location/address_list.dart';
import 'package:aeyde_app/buttom_sheets/location/location_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const LocationSheet());

class LocationSheet extends StatelessWidget {
  const LocationSheet({Key? key}) : super(key: key);

  get trailing => null;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          showModalBottomSheet<void>(
            context: context,
            isScrollControlled: true,
            isDismissible: true,
            shape: const RoundedRectangleBorder(
               borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
            ),
            ),
            backgroundColor: Colors.white,
            builder: (BuildContext context) {
              var location;
              return Container(
                height: MediaQuery.of(context).size.height * 0.9, // Set your desired height here
                 child: Column(
                  children: <Widget>[
                    AppBar(
                      backgroundColor: Colors.transparent,
                     elevation: 0,
                    automaticallyImplyLeading: false,
                    centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               // Adjust the width as needed
              Text(
                'Shipping Address',
                textAlign: TextAlign.center,
                style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                ),
              ),
                    ],
          ),
                    actions: <Widget>[
                      IconButton(
                        icon: Icon(Icons.done,
                        color: Colors.black,
                        size: 20),
                        onPressed: (){
                         Navigator.pop(context);
                        },
                      ),
                    ],
                    leading: IconButton(
                    icon: Icon(Icons.close,
                        color: Colors.black,
                        size: 20),
                        onPressed: (){
                         Navigator.pop(context);
                        },
                        ),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                  ),
                   Expanded(
                    child: SingleChildScrollView(
                      child:
                          ListView.builder(
                             shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                            itemCount: 2,
                          itemBuilder: (context,index) => 
                            AddressCard(
                              addressList : location [index],
                              location: AddressList,
                            ),
                          ),
                    ),
                   ),
                  ],
                 ),
              );
            },
          );
        },
        child:
               Icon(
                          Icons.location_on,
                          color: Colors.black,
                          size: 20,
                        ),
      ),
          );
  }
}