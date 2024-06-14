import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(

  title: 'LS ARCHIV',
  debugShowCheckedModeBanner: false,
home: LOGINPAGE(),
),);

class LOGINPAGE extends StatefulWidget {
  const LOGINPAGE({super.key});

  @override
  State<LOGINPAGE> createState() => _LOGINPAGEState();
}

class _LOGINPAGEState extends State<LOGINPAGE> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(title: Text("LESAR DIRECTORY",style: TextStyle(color: Colors.white,),),
backgroundColor: Colors.red,
 actions: [
          IconButton(onPressed: () => {}, icon: Icon(Icons.search),color: Colors.black,tooltip: "serch",),
          IconButton(onPressed: () => {}, icon: Icon(Icons.more_vert),color: Colors.black,tooltip: "more",),
        ],
        ),

body:SingleChildScrollView(
  child: Column(children:<Widget>[
    Padding
  (padding: const EdgeInsets.only(top: 100), 
  child: DecoratedBox(
   decoration: BoxDecoration(
     borderRadius: BorderRadius.circular(200),
       ),
        child: Center(
          child: Image.asset('assets/login.png',height: 100,width: 90,),
  ),
    ),
   ),

// ----------------------------------------------------------------email-------------//
        Padding(
   padding: EdgeInsets.only(top: 20,right: 300,left: 300),
   
   child: TextField(
      controller: emailController,
       decoration: InputDecoration(
       border: OutlineInputBorder(),
       labelText: 'Enter Email',
       hintText: 'Enter Emai Or Phone',
       counterText: 'Email Id',
     
     ),
   ),
 ),  
//  -----------------------------------password--------------------------------//
 const Padding(
   padding: EdgeInsets.only(right: 300,left: 300),

   child: TextField(
       obscureText: true,
       decoration: InputDecoration(
       border: OutlineInputBorder(),
       labelText: 'Password',
       hintText: 'paaword min 8 cherectors',
       counterText:'password '
     ),
   ),
 ),
//  --------------------login button----------------------------------------//
  SizedBox( 
            height: 65, 
            width: 360, 
            child: Container( 
                child: Padding( 
                  padding: const EdgeInsets.only(top: 20.0), 
                  child: ElevatedButton( 
                    child: Text( 'Log in ', style: TextStyle(color: Colors.white, fontSize: 20),
               ), 
               style: ElevatedButton.styleFrom(
    backgroundColor: Colors.red, // background
  ),
           onPressed: (){ 

String myEmail =emailController.text;
               if(validateEmail(myEmail)){
                    print('Email is Valid');

                }
                else{
                print('Email is Not Valid '); 

                }

                        }, 
  
                  ), 
                ),
                 
              ), 
          ), 
           const SizedBox( 
              height: 50, 
            ),
 SizedBox(
        height: 130,
            ),
            Text('New User? Create Account')       
            
  
                      
                    ], 
                  ), 
                ) 
            );

  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text,
      ),
    );
  }
}


//---- Email Validation--------//
bool validateEmail(String email) {
 
  final RegExp emailRegex = RegExp(r'^[\w.+-]{3,6}@gmail\.com$');

  return emailRegex.hasMatch(email);
}
