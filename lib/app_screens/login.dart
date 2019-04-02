import 'package:flutter/material.dart';
import 'package:flutter_login/app_screens/signin.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginPage();
  }

}

class LoginPage extends State<Home>{ 

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var _fromKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar : AppBar(
        title : Text('Login')
      ),
      body: new Stack(
        children: <Widget>[
         Container(
            decoration: BoxDecoration(
            // image: DecorationImage(
            //   image: AssetImage('images/login.jpg'),
            //   fit: BoxFit.fill
            // )
          ),
         ),
         
         Center(
         child : Container(
           //margin: EdgeInsets.only(top:200,bottom:100,left: 30,right:30 ),
           width: 320,
           height: 280,
           child : Form(
            key: _fromKey, 
            child: Card(
            color: Colors.white30,
            child : Column(
             children: <Widget>[

               Expanded( child: Padding(
                 padding: EdgeInsets.all(10),
                 child : TextFormField(
                   controller: userNameController,
                   validator: (String value){
                     if(value.isEmpty){
                       return 'Please Enter Your User Name';
                     }
                   },
                   decoration: InputDecoration(
                     labelText:'User Name',
                     hintText: 'Enter Your User Name',
                     errorStyle: TextStyle(
                       color : Colors.yellowAccent,
                       fontSize :15.0
                     ),
                     border : OutlineInputBorder(
                       borderRadius: BorderRadius.circular(5.0)
                     )
                   ),
                 )
               ),),

               Expanded(child :Padding(
                 padding: EdgeInsets.only(top:15,left:10,right:10),
                 child : TextFormField(
                   controller: passwordController,
                   validator: (String value){
                     if(value.isEmpty){
                       return 'Please Enter Your Password';
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
                   ),
                 )
               ),),

                Expanded(child :Row(
                 children: <Widget>[
                Expanded( child :Padding(
                 padding: EdgeInsets.only(top:15,left:15,right: 10),
                 child: RaisedButton(
                   color: Colors.lightBlueAccent,
                   child : Text('Create Account'),
                   onPressed: (){
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => SignIn()) 
                     );

                   },
                 ),
               ),),

               Expanded(child : Padding(
                 padding: EdgeInsets.only(top: 15.0,left:15,right: 10),
                 child: RaisedButton(
                   color: Colors.lightBlueAccent,
                   child : Text('Login'),
                   onPressed: (){
                     setState(() {
                            if(_fromKey.currentState.validate()){
                              loguser(context);
                              userNameController.text = "";
                              passwordController.text = "";
                            }                
                     });

                   },
                 ),
               ),)
                 ],
               ),)
             ],
           )
         ),
         ),
         ),
         )

        
        ],
      )
    );
  }

  void loguser(BuildContext context){
    String username = userNameController.text;
    String password = passwordController.text;

    var alertDialog = AlertDialog(
      title : Text('Hi $username !'),
      content: Text('Welcome!'),
    );

    showDialog(context: context,
    builder : (BuildContext context) => alertDialog
    );



  }

}
