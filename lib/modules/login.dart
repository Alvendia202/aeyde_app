import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State <LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  TextEditingController controller = new TextEditingController();
  @override
  Widget build(BuildContext context){    
    return Center(
      child: Container(
        width: double.infinity,
        height: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 300,
            ),
          Container (
            width: 300,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              color: Colors.white,
              borderRadius: BorderRadius.circular(3)
              ),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: 
                    GestureDetector(
                      onTap:() {},
                      child:
                        Icon(Icons.arrow_downward),
                    ),
                ),
              ),
              ),
              Container (
            width: 300,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              color: Colors.white,
              borderRadius: BorderRadius.circular(3)
              ),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: 
                    GestureDetector(
                      onTap:() {},
                      child:
                        Icon(Icons.arrow_downward),
                    ),
                ),
              ),
              ),
              Container (
            width: 300,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              color: Colors.white,
              borderRadius: BorderRadius.circular(3)
              ),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: 
                    GestureDetector(
                      onTap:() {},
                      child:
                        Icon(Icons.arrow_downward),
                    ),
                ),
              ),
              ),
          ],
        ),
      ),
    );
  }
}