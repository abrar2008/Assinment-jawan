
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {


  Widget  buildEmail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Email',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold
        ),
      ),
      SizedBox(height: 10,),
       Container(
         alignment: Alignment.centerLeft,
         decoration: BoxDecoration(
           color: Colors.white,
           borderRadius: BorderRadius.circular(10),
           boxShadow: [
             BoxShadow(
               color: Colors.black26,
               blurRadius: 6,
               offset: Offset(0,2)
             )
           ]
         ),
         height: 60,
         child: TextField(
           keyboardType: TextInputType.emailAddress,
             style: TextStyle(
               color: Colors.black87
             ),
             decoration: InputDecoration(
               border: InputBorder.none,
               contentPadding: EdgeInsets.only(top: 14),
               prefixIcon: Icon(
                 Icons.email,
                 color: Color(0xff5ac18e),
               ),
               hintText: 'Email',
               hintStyle: TextStyle(
                 color: Colors.black38
               )
             ),
         ),
       )
    ],
  );
}
Widget buildPassword() {
  return Column(
    
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Password',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold
        ),
      ),
      SizedBox(height: 10,),
       Container(
         alignment: Alignment.centerLeft,
         decoration: BoxDecoration(
           color: Colors.white,
           borderRadius: BorderRadius.circular(10),
           boxShadow: [
             BoxShadow(
               color: Colors.black26,
               blurRadius: 6,
               offset: Offset(0,2)
             )
           ]
         ),
         height: 60,
         child: TextField(
           
           obscureText: true,
             style: TextStyle(
               color: Colors.black87
             ),
             decoration: InputDecoration(
               border: InputBorder.none,
               contentPadding: EdgeInsets.only(top: 14),
               prefixIcon: Icon(
                 Icons.lock,
                 color: Color(0xff5ac18e),
               ),
               hintText: 'Password',
               hintStyle: TextStyle(
                 color: Colors.black38
               )
             ),
         ),
       )
    ],
  );
}
Widget buildUserName() {
  return Column(
    
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'UserName',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold
        ),
      ),
      SizedBox(height: 10,),
       Container(
         alignment: Alignment.centerLeft,
         decoration: BoxDecoration(
           color: Colors.white,
           borderRadius: BorderRadius.circular(10),
           boxShadow: [
             BoxShadow(
               color: Colors.black26,
               blurRadius: 6,
               offset: Offset(0,2)
             )
           ]
         ),
         height: 60,
         child: TextField(
           
           obscureText: true,
             style: TextStyle(
               color: Colors.black87
             ),
             decoration: InputDecoration(
               border: InputBorder.none,
               contentPadding: EdgeInsets.only(top: 14),
               prefixIcon: Icon(
                 Icons.lock,
                 color: Color(0xff5ac18e),
               ),
               hintText: 'UseName ',
               hintStyle: TextStyle(
                 color: Colors.black38
               )
             ),
         ),
       )
    ],
  );
}
Widget buildsendSignIn(){
  return Container(
    alignment: Alignment.centerRight,
    child: FlatButton(
    onPressed: () {
       
            Navigator.pop(context);
          },
  
    child:  Text('Sign In', 
    style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),
    
    ),
      
      )
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value:SystemUiOverlayStyle.light ,
        child: GestureDetector(
          child: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0x665ac18e),
                      Color(0x995ac18e),
                      Color(0xcc5ac18e),
                      Color(0xff5ac18e),

                    ]
                  )
                ),
                child: 
                SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 120
                  ),
                 child: Column(
                    mainAxisAlignment:  MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox( height: 50,),
                      buildUserName(),
                      
                      SizedBox( height: 20,),
                      buildEmail(),
                      
                      SizedBox( height: 20,),
                      buildPassword(),
                      SizedBox( height: 20,),
                      buildsendSignIn(),
                      
                    ],
                  ),
                ),
              )

            ],

          ),
        ),
        ),
        );
         }
}
