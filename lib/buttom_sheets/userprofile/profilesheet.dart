import 'package:aeyde_app/buttom_sheets/userprofile/destinations.dart';
import 'package:aeyde_app/buttom_sheets/userprofile/list.dart';
import 'package:aeyde_app/buttom_sheets/userprofile/properties.dart';
import 'package:aeyde_app/routes/login_routes/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aeyde_app/modules/theme.dart';

class ProfileSheet extends StatelessWidget {
  const ProfileSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final settingsList = context.read<SettingsList>();
    final itemList = settingsList.itemList;

    return Center(
      child: InkWell(
        onTap: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            isDismissible: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            backgroundColor: Color.fromARGB(255, 250, 250, 250),
            builder: (BuildContext context) {
              return Container(
                height: MediaQuery.of(context).size.height * 0.9,
                child: Column(
                  children: <Widget>[
                    AppBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      automaticallyImplyLeading: false,
                      centerTitle: true,
                      title: Text(
                        'Account',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      actions: [
                        Container(
                          width: 90,
                          child: TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text(
                              'Done',
                              style: TextStyle(
                                fontSize: 15,
                                color: textColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    _buildListCard(context),
                    Expanded(
                      child:
                    _buildBottomSheetContent(context, itemList),
                    ), 
                    _buildSignOutCard(context),
                  ],
                ),
              );
            },
          );
        },
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            boxShadow: const [
              BoxShadow(
                spreadRadius: 2,
                blurRadius: 10,
                color: Colors.black12,
                offset: Offset(0, 10),
              ),
            ],
            shape: BoxShape.circle,
          ),
          child: ClipOval(
            child: Image.network(
              "https://images.pexels.com/photos/3307758/pexels-photo-3307758.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=250",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBottomSheetContent(BuildContext context, List<ListItem> itemList) {
    return Column(
      children: [
              Container(
                height: 200,
                width: 470,
                /// Clipping the inner View Condition
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Color.fromARGB(255, 255, 255, 255),
                   boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 192, 192, 192).withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
                ),
                child:
        ListView.builder(
            itemCount: itemList.length,
            itemBuilder: (context, index) {
              return _buildListTile(context, itemList[index]);
            },
        ),
              ),
      ],
    );
  }

  Widget _buildListTile(BuildContext context, ListItem listItem) {
    return ListTile(
      title: Text(listItem.title),
      leading: Icon(listItem.leadingIcon, color: Color.fromARGB(255, 41, 39, 39),
      ),
      onTap: () {
        Navigator.pop(context); // Close the bottom sheet
        // Navigate to the corresponding page based on the title
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => _getDestinationPage(listItem.title)),
        );
      },
    );
  }

  Widget _getDestinationPage(String title) {
    // Map each title to a corresponding destination page
    switch (title) {
      case 'Orders':
        return OrdersPage();
      case 'Purchased':
        return PurchasedPage();
      case 'Location':
        return LocationPage();
      case 'Feedback':
        return FeedbackPage();
      case 'About':
        return AboutPage();
      default:
        return Placeholder(); // Handle the default case as needed
    }
  }

  Widget _buildListCard(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage('https://images.pexels.com/photos/3307758/pexels-photo-3307758.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=250'), // Replace with your image URL
        ),
        title: Text('Card Title'),
        subtitle: Text('Card Subtitle'),
        onTap: () {
        },
      ),
    );
  }
}

Widget _buildSignOutCard(BuildContext context) {
  return Card(
    child: ListTile(
      title: Text('Sign out',
      style: TextStyle(color: textColor),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPage(),
          ),
        );
      },
    ),
  );
}