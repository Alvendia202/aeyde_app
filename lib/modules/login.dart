import 'package:aeyde_app/routes/menu_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  get color => null;
  get _formKey => null;

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Image.asset('assets/images/aeyde.png',
        width: 100, 
        height: 40,
      ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, size: 12, color: Colors.black),
          onPressed: () {
            Navigator.popAndPushNamed(context, '/settings_page');
          },
        ),
      ),
      body: Container(
        child: Column(
            children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Column(
                          children: [
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 35), 
                child: 
                  Container(
  width: 500.0,
  height: 40.0,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 15.0, 
                  ),
                ),
                        hintText: 'Email address or Username',
                        hintStyle: TextStyle(
                          color: const Color.fromARGB(255, 143, 143, 143),
                          fontSize: 12.0,
                          ),
                          prefixIcon: Icon(Icons.person_2_rounded,
                          size: 15,
                          color:Colors.black,
                        ),  
                        contentPadding: EdgeInsets.symmetric(vertical: 15.0),     
              ),
              
            ),
            ),
        ),
                            SizedBox(height: 10.0),
                                MaterialButton(
                                  minWidth: 370.0,
                                  height: 40,
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MenuPage()));
                                      return;
                                    }
                                  },
                                  color: Colors.black,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Text(
                                            'LOGIN',
                                            style: TextStyle(fontSize: 12,
                                            color: Colors.white),

                                          ),
                                        ],
                                      ),
                                    ),
                                ),
                                SizedBox(height: 10.0),
                                Text(
                                  "or continue with"
                                ),
                                SizedBox(height: 10.0
                                ),
                                MaterialButton(
                                  minWidth: 370.0,
                                  height: 40,
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MenuPage()));
                                      return;
                                    }
                                  },
                                  color: Color.fromARGB(255, 224, 224, 224),
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Image.asset(
                                            'assets/images/google.png', 
                                            width: 30,
                                            height: 15, 
                                          ),
                                          SizedBox(width: 4), 
                                          Text(
                                            'continue with Google',
                                            style: TextStyle(fontSize: 12,
                                            color: Colors.black),

                                          ),
                                        ],
                                      ),
                                    ),
                                ),                                        
                                SizedBox(height: 10.0),
                                MaterialButton(
                                  minWidth: 370.0,
                                  height: 40,
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MenuPage()));
                                      return;
                                    }
                                  },
                                  color: Color.fromARGB(255, 224, 224, 224),
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Image.asset(
                                            'assets/images/apple.png', 
                                            width: 30,
                                            height: 15, 
                                          ),
                                          SizedBox(width: 4), 
                                          Text(
                                            'continue with Apple',
                                            style: TextStyle(fontSize: 12,
                                            color: Colors.black),

                                          ),
                                        ],
                                      ),
                                    ),
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