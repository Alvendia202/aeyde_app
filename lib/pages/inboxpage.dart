import 'package:aeyde_app/routes/inbox_routes/inboxheader.dart';
import 'package:aeyde_app/modules/theme.dart';
import 'package:flutter/material.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({super.key});
 
@override
  State<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage>{
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
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                Row(
                children: <Widget>[
                  const InboxWidget(),
                  const SizedBox(width: 290),
               Container(
                      width: 50,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 2,
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
                ),
              ),
            ),
            ),
                ],
              ),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
         Container(
           padding: const EdgeInsets.all(15),
                width: double.infinity,
                color: Colors.transparent,
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                          color: Colors.grey, 
                          width: 10.0, 
                  ),
                ),
                        hintText: 'search here',
                        contentPadding: const EdgeInsets.all(15),
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 13.0,
                          ),
                          suffixIcon: const Icon(Icons.search,
                          color:Color.fromRGBO(0, 0, 0, 1),
                        ),       
              ),
            ),
            ),
        ),
              ],  
                  ),
                ],
                ),
                 
              ),
        ),
        
      );
  }
}