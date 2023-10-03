import 'package:aeyde_app/routes/menu_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
   LoginPage({ Key? key }) : super(key: key);

  @override
  State <LoginPage> createState() => _LoginPageState();
  // ignore: unused_field
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
}

class _LoginPageState extends State<LoginPage>{
  TextEditingController controller = new TextEditingController();
  
  @override
  Widget build(BuildContext context){    
    var _formKey;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'aeyde',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.popAndPushNamed(context, '/search_page');
          },
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 35), 
                              child: Container(
                              width: 380.0, 
                              height: 40.0, 
                                child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    hintText: 'Enter email',
                                    prefixIcon: Icon(Icons.email_outlined),
                                    border: OutlineInputBorder(),
                                  ),
                                  onChanged: (String value) {},
                                  validator: (value) {
                                    if (value == null || value.isEmpty)
                                      return 'Email required';
                                    return null;
                                  },
                                )
                                ),
                            ),
                            SizedBox(height: 10.0),
                                MaterialButton(
                                  minWidth: 400.0,
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
                                  child: Text(
                                    "LOG IN ",
                                    style: TextStyle(
                                        color: Colors. white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  ),
                                ),
                                SizedBox(height: 10.0),
                                Text(
                                  "or continue with"
                                ),
                                SizedBox(height: 10.0),
                                MaterialButton(
                                  minWidth: 400.0,
                                  height: 40.0,
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                     Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => MenuPage()),
                                  );
                                }
                              },
                                  color: Colors.grey,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: 
                                    Icon(Icons.star),
                                    ),
                                   Text(
                                        "Continue with Apple",
                                        style: TextStyle(
                                          fontSize: 18,

                                        ),
                                      ),
                                  ],
                                ),
                                ),
                  ),
                ],
                                  ),
                                ),
          SizedBox(height: 10.0),
                                MaterialButton(
                                  minWidth: 400.0,
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
                                  color: Colors.grey,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Text(
                                    "Continue with Apple",
                                    style: TextStyle(
                                        
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  ),
                                ),
          ],
      ),
      ),
    );
  }
}