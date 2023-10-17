//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InscriptionPage extends StatelessWidget {
  late SharedPreferences prefs;
  TextEditingController txt_login = new TextEditingController();
  TextEditingController txt_password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Page Inscription',style: TextStyle(fontFamily: 'against',fontWeight: FontWeight.bold,fontSize: 30)),),),
        body: Center(child: Container(height: 330,width: 400,
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
    color: Colors.white54,
    borderRadius:BorderRadius.circular(20),
    boxShadow: [
      BoxShadow(color: Colors.grey,
    spreadRadius: 5,
    blurRadius: 7,
    offset: Offset(0,3),),
    ],
    ),
       child:Column(mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(padding: EdgeInsets.all(10),
    child: TextFormField(controller: txt_login,
    decoration: InputDecoration(
    prefixIcon: Icon(Icons.person),
    hintText: "Identifiant",
    border: OutlineInputBorder(
    borderSide: BorderSide(width: 3),
    borderRadius: BorderRadius.circular(30))),
    ),
    ),
Container(padding: EdgeInsets.all(10),
    child: TextFormField(
    obscureText: true,
    controller: txt_password,
    decoration: InputDecoration(
    prefixIcon: Icon(Icons.password),
    hintText: "Password",
    border: OutlineInputBorder(
    borderSide: BorderSide(width: 3),
    borderRadius: BorderRadius.circular(30))),
    ),),
    Container(
    padding: EdgeInsets.all(10),
    child: ElevatedButton(style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    minimumSize: const Size.fromRadius(30)),
    onPressed: (){
    _onInscrire(context);

    }, child: Text('Inscription',style: TextStyle(fontFamily: 'against',fontSize: 20))),),
          TextButton( child: Text("j'ai un compte",style: TextStyle(fontFamily: 'against',fontSize: 20)),
          onPressed: (){
    Navigator.pop(context);
    Navigator.pushNamed(context,'/authentification');
    }
    ),
    ],
    )))

);
  }
  Future<void>  _onInscrire( BuildContext context) async{
  SnackBar snackBar = SnackBar(content: Text(""));
    if(!txt_login.text.isEmpty && !txt_password.text.isEmpty){

    //  try {
        //await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: txt_login.text;
          password: txt_password.text;
      //  );
        Navigator.pop(context);
        Navigator.pushNamed(context, '/home');
     // } on FirebaseAuthException catch (e) {
      //  if (e.code == 'weak-password') {
      //    SnackBar snackBar = SnackBar(content: Text("The password provided is too weak."));

       // } else if (e.code == 'email-already-in-use') {

       //   SnackBar snackBar = SnackBar(content: Text("The account already exists for that email."));
       // }
   //   } catch (e) {
      //  print(e);
      }
   // }
   // else {
    //  const snackBar= SnackBar(content: Text('ID ou mot de paase vides'),);
     // ScaffoldMessenger.of(context).showSnackBar(snackBar);
   // }

  }

}
