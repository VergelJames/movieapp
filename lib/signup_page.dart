import 'package:flutter/material.dart';
import 'login_page.dart';

class SignUp extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {



final firstRow = Row(
  children: <Widget>[

    Expanded(
      child:
    TextFormField(
      keyboardType: TextInputType.emailAddress,
      cursorColor: Colors.deepPurple[400],
      autofocus: false,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person, color:Colors.deepPurple[400]),
        hintText: ' First Name',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
           focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurple[400]),
            borderRadius: BorderRadius.circular(5.0)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color:Colors.grey),
            borderRadius: BorderRadius.circular(5.0)),
         ),
      ), 
    ),

    SizedBox(width: 15.0,),

    Expanded(
      child:
      TextFormField(
        
        autofocus: false,
        obscureText: false,
      cursorColor: Colors.deepPurple[400],
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person_outline, color:Colors.deepPurple[400]),
          hintText: ' Last Name',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
           focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurple[400]),
            borderRadius: BorderRadius.circular(5.0)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color:Colors.grey),
            borderRadius: BorderRadius.circular(5.0)),
        ),
      ),
    ),

  ]
);

final email =
    TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
       cursorColor: Colors.deepPurple[400],
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.email, color:Colors.deepPurple[400]),
        hintText: ' Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
           focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurple[400]),
            borderRadius: BorderRadius.circular(5.0)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color:Colors.grey),
            borderRadius: BorderRadius.circular(5.0)),
         ),
      );


    

final lastRow = Row(
  children: <Widget>[

    Expanded(
      child:
    TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      cursorColor: Colors.deepPurple[400],
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.remove_red_eye, color:Colors.deepPurple[400]),
        hintText: ' Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
           focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurple[400]),
            borderRadius: BorderRadius.circular(5.0)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color:Colors.grey),
            borderRadius: BorderRadius.circular(5.0)),
         ),
      ), 
    ),
    SizedBox(width: 15.0,),

    Expanded(
      child:
      TextFormField(
        autofocus: false,
        obscureText: true,
        cursorColor: Colors.deepPurple[400],
        decoration: InputDecoration(
        suffixIcon: Icon(Icons.remove_red_eye, color:Colors.deepPurple[400]),
          hintText: " Confirm Password",
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
           focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurple[400]),
            borderRadius: BorderRadius.circular(5.0)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color:Colors.grey),
            borderRadius: BorderRadius.circular(5.0)),
        ),
      ),
    ),



  ]
);

final helper = Text('   *Use 8 or more characters with a mix of letters, numbers & symbols',
                      style: TextStyle(color: Colors.grey, fontSize: 10.0),
                      );



    final nextbutton = Padding(
        padding: EdgeInsets.symmetric(vertical:16.0),
        child: Material(
          child: MaterialButton(
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
            ),
            minWidth: 200.0,
            height: 42.0,
            onPressed: (){},
          color: Colors.deepPurple[400],
          child: Text('Create an Account', style: TextStyle(color: Colors.white),
          ),
        ),
        ),
    );




    final account = FlatButton(
      child: Center(
        
        child: Column( children: <Widget>[
          Text('Already have an Account?',
      textAlign: TextAlign.center,
       style: TextStyle(color : Colors.black54), 
        ),
        Text('LOG IN',
      textAlign: TextAlign.center,
       style: TextStyle(color : Colors.deepPurple[400]), 
        ),
        ],
      ),
      ),
        onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );  
        }, 
      );




    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left:24.0,right:24.0),
          children: <Widget>[
            Center(
              child: Text(
              "Sign Up",
              style: TextStyle(color: Colors.black,
              fontSize: 40.0 ),
              ),
            ),
            SizedBox(height: 20.0,),
            firstRow,
            SizedBox(height: 15.0,),
            email,
            SizedBox(height: 15.0,),
            lastRow,
            SizedBox(height:2.0),
            helper,
            SizedBox(height: 13.0,),
            nextbutton,
             account,
          ],

        ),
       
      )
      
    );
  }
}
