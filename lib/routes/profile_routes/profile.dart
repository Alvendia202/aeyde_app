import 'package:aeyde_app/pages/settings_page.dart';
import 'package:aeyde_app/modules/theme.dart';
import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';

// ignore_for_file: unused_import

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  get trailing => null;
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: BackdropScaffold(
          headerHeight: 200.0,
          backLayer: Container(), // Placeholder container for the backLayer
          frontLayer: YourFrontLayerWidget(), 
        ),
      ),
    );
  }
}

class YourFrontLayerWidget extends StatelessWidget {
  const YourFrontLayerWidget({Key? key}) : super(key: key);

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
            child: Padding(
            padding: const EdgeInsets.all(26.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Profile",
                          style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Avenir'),
                          textAlign: TextAlign.left,
                        ),
                Row(
                    children: [
                    IconButton(
                      onPressed: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => SettingsPage()
                        ),
                      );
                    },
                    icon: const Icon(Icons.settings,
                    color: Colors.black,
                    size: 20,
                 ),
                ),
               ],
              ),
             ],
            ),
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () async {
                      final ConfirmAction? action =
                          await _asyncConfirmDialog(context);
                      print("Confirm Action $action");
                    },
                    child: Text(
                      "Edit profile",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Avenir',
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Icon(
                    Icons.edit,
                    color: Colors.black,
                    size: 15, 
                  ),
                ],
              ),
                SizedBox(
                  height: 30,
                ),
                Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(0, 10))
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://images.pexels.com/photos/3307758/pexels-photo-3307758.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=250",
                              ))),
                                  ),
                                  Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            width: 4,
                                            color: Theme.of(context).scaffoldBackgroundColor,
                                          ),
                                          color: Colors.grey,
                                        ),
                                        child: Icon(
                                          Icons.camera_alt_outlined,
                                          color: Colors.white,
                                        ),
                                      )),
                                ],
                              ),
                ),
                              SizedBox(
                              height: 35,
                            ),
                            Center(
                              child:
                            Text("@User",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Avenir',
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

enum ConfirmAction { Cancel, Save }

Future<ConfirmAction?> _asyncConfirmDialog(BuildContext context) async {
  return showDialog<ConfirmAction>(
    context: context,
    barrierDismissible: false, // User must tap a button to close the dialog
    builder: (BuildContext context) {
      var _formKey;
      return AlertDialog(
        title: Text(
          'Edit profile',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w400,
            fontFamily: 'Avenir',
          ),
        ),
        content: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Container(
                      height: 40.0, 
                      width: 500.0,
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Name',
                            hintText: 'Enter Full Name',
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (String value) {},
                          // ignore: body_might_complete_normally_nullable
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return 'Full Name is required';
                          },
                        )),
                    SizedBox(height: 5.0),
                        Container(
                      height: 40.0, 
                      width: 500.0,
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Address',
                            hintText: 'Enter Address',
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (String value) {},
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return 'Address is required';
                            return null;
                          },
                        )),
                    SizedBox(height: 5.0),
                    Container(
                      height: 40.0, 
                      width: 500.0,
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            hintText: 'Enter email',
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (String value) {},
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return 'Email is required';
                            return null;
                          },
                        )),
                    SizedBox(height: 5.0),
                    Container(
                      height: 40.0, 
                      width: 500.0,
                        child: TextFormField(
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Enter password',
                            prefixIcon: Icon(Icons.lock),
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (String value) {},
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return 'Password is required';
                            return null;
                          },
                        )),
                  ],
                ),
                ),
                ),
          ],
                ),
                ),
        actions: <Widget>[
          TextButton(
            child: const Text('Cancel',
            style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w400,
            fontFamily: 'Avenir',),
            ),
            onPressed: () {
              Navigator.pop(context, ConfirmAction.Cancel);
            },
          ),
          TextButton(
            child: const Text('Save'),
            onPressed: () {
              Navigator.pop(context, ConfirmAction.Save);
            },
          ),
        ],
      );
    },
  );
}