import 'package:flutter/material.dart';
import 'package:flutter_login/app_screens/login.dart';


class SignIn extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePage();
  }

}



class HomePage extends State<SignIn>{
  TextEditingController fullNameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  var fromKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
 
      appBar: AppBar(
        title : Text('Create Account')
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(left:20.0,right:20.0,top:40.0),
        child : Form(
          key: fromKey, 
          child : ListView(
            children: <Widget>[
              Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top:10),
              child : TextFormField(
                controller: fullNameController,
                validator: (String value){
                  if(value.isEmpty){
                    return "Please Enter Your Full Name";
                  }
                },
               decoration: InputDecoration(
                     labelText:'Full Name',
                     hintText: 'Enter Your Full Name',
                     errorStyle: TextStyle(
                       color : Colors.yellowAccent,
                       fontSize : 15.0,
                     ),
                     border : OutlineInputBorder(
                       borderRadius: BorderRadius.circular(5.0)
                   )

            ),),
            ),
           

            Padding(
              padding: EdgeInsets.only(top:10.0),
              child:TextFormField(
                controller: userNameController,
                validator: (String value){
                  if(value.isEmpty){
                   return "Please Enter Your User Name";
                 }
                },
               decoration: InputDecoration(
                     labelText:'User Name',
                     hintText: 'Enter Your User Name',
                     errorStyle: TextStyle(
                       color : Colors.yellowAccent,
                       fontSize: 15.0
                     ),
                     border : OutlineInputBorder(
                       borderRadius: BorderRadius.circular(5.0)
                   )

            ),),
            ),

            Padding(
              padding: EdgeInsets.only(top:10.0),
              child:TextFormField(
                controller: emailController,
                validator: (String value){
                  if(value.isEmpty){
                   return "Please enter Your valid Email";
                 }
                },
               decoration: InputDecoration(
                     labelText:'Email',
                     hintText: 'Enter Your Email',
                     errorStyle: TextStyle(
                       color: Colors.yellowAccent,
                       fontSize: 15.0
                     ),
                     border : OutlineInputBorder(
                       borderRadius: BorderRadius.circular(5.0)
                   )

            ),),
            ),

            Padding(
              padding:EdgeInsets.only(top:10.0) ,
              child:TextFormField(
             // keyboardType: ,
               controller: passwordController,
               validator: (String value){
                 if(value.isEmpty){
                   return "Please Enter Your Password";
                 }
               },
               decoration: InputDecoration(
                     
                     labelText:'Password',
                     hintText: 'Enter Your Password',
                     errorStyle: TextStyle(
                       color : Colors.yellowAccent,
                       fontSize :15.0
                     ),
                     border : OutlineInputBorder(
                       borderRadius: BorderRadius.circular(5.0)
                   )

            ),), 
            ),

            Padding(
              padding: EdgeInsets.only(top:10.0,left:30,right:30.0),
              child : RaisedButton(
                color: Colors.lightBlueAccent,
                child : Text('Sign Up',style: TextStyle(
                  fontSize: 20.0
                ),),
                onPressed: (){
                  setState(() {
                      if(fromKey.currentState.validate()){
                        Navigator.pop(
                       context,
                       MaterialPageRoute(builder: (context) => Home()) 
                     );
                      }
                    });
                },
              )
            )
            

            
          ],
        )
            ],
          )
         
      ),),) ,
    );
  }

}