import 'package:flutter/material.dart';
import 'signup_page.dart';


class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    AssetImage ficon  = AssetImage('images/Logo.png');

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurpleAccent),
            borderRadius: BorderRadius.circular(5.0)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color:Colors.grey),
            borderRadius: BorderRadius.circular(5.0)),
      ),
    );


    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurpleAccent),
            borderRadius: BorderRadius.circular(5.0)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color:Colors.grey),
            borderRadius: BorderRadius.circular(5.0)),
      ),
    );

    final loginButton = Padding(
        padding: EdgeInsets.symmetric(vertical:16.0),
        child: Material(
          color: Colors.white,
          child: MaterialButton(
            minWidth: 200.0,
            height: 43.0,
            onPressed: (){},
          color: Color(0xFF7E57C2),
          child: Text('Log In', style: TextStyle(color: Colors.white),
          ),
        ),
        ),
    );


    final signupButton = Padding(
        padding: EdgeInsets.symmetric(vertical:16.0),
        child: Material(      
          child: MaterialButton(
            minWidth: 200.0,
            height: 42.0,
            onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUp()),
            );
            },
          color: Colors.white,
          child: Text('Sign Up', style: TextStyle(color: Color(0xFF7E57C2))),
          ),
        )
    );

    final forgotpass = FlatButton(
      child: Text('Forgot Password?', style: TextStyle(color : Colors.black54),
        ),
        onPressed: (){  
        }, 
      );

    
    final icon = Image(
      width: 200.0,
      height: 300.0,
      image: ficon,

    );


    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left:24.0,right:24.0),
          children: <Widget>[
            icon,
            SizedBox(height: 15.0,),
            email,
            SizedBox(height: 8.0,),
            password,
            SizedBox(height: 24.0,),
            loginButton,
            signupButton,
            forgotpass,
          ],

        ),
       
      )
      
    );
  }
}
