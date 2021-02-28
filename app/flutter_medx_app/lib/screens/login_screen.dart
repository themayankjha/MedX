import 'package:flutter/material.dart';
import './signup_screen.dart';
import './home_screen.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = './login';
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
        //title: Text('Login'),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        color: Theme.of(context).primaryColor,
        width:double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 20,),
            TextField(
              style: TextStyle(fontSize: 18, color: Colors.black54),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Username',
                contentPadding: const EdgeInsets.all(15),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(5),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),

            SizedBox(height:20,),
            TextField(
              obscureText: true,
              style: TextStyle(fontSize: 18, color: Colors.black54),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Password',
                contentPadding: const EdgeInsets.all(15),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(5),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          SizedBox(height: 20,),
          FloatingActionButton(
            child: Text(
              ' Login ',
              style: TextStyle(
                fontSize: 15,
              ),  
            ),
            shape: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(5),
            ),
            onPressed: () {Navigator.of(context).pushNamed(HomeScreen.routeName);}
          ),
          SizedBox(height: 120,),
          Column(children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          alignment: Alignment.center,
          child: ElevatedButton(child: Text('Sign Up'),
           style: TextButton.styleFrom(
      primary: Colors.white,
      side: BorderSide(color: Colors.white, width: 2),
        
       shadowColor: Colors.black,
      ),  
            onPressed:() {
              Navigator.of(context).pushNamed(SignupScreen.routeName);
            },
            ),
        ),
      ]),
          ],
          ),
      ),
    );
  }
}