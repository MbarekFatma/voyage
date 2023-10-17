//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class AuthentificationPage extends StatelessWidget{
  late SharedPreferences prefs;
  TextEditingController txt_login = new TextEditingController();
  TextEditingController txt_password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Center(
                child:Text("Page Authentification",style: TextStyle(
                  fontFamily: 'against',
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.white,
                ))
            ) ),
        body:
        Center(
            child: Container(
              height: 330,
              width: 400,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(1),
                      spreadRadius: 5,
                      offset:Offset(0,2),
                    )
                  ]
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Container(
                        padding: EdgeInsets.all(10),
                        child: TextFormField(
                          controller: txt_login,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              hintText: "Identifiant",
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 3),
                                  borderRadius: BorderRadius.circular(30)
                              )
                          ),

                        )



                    ),
                    Container(
                      padding:EdgeInsets.all(10),
                      child: TextFormField(
                        obscureText: true,
                        controller: txt_password,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.password),
                            hintText:"Password",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 3),
                                borderRadius: BorderRadius.circular(30)
                            )
                        ),
                      ),
                    ),
                    Container(
                      padding:EdgeInsets.all(10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)
                            ),
                            minimumSize: const Size.fromHeight(50)
                        ),


                        onPressed:(){
                          _onAuthentifier(context);
                        },
                        child:Text('Connexion',style:TextStyle
                          (fontSize: 22,
                            color: Colors.white,
                            fontFamily: 'against' )),

                      ),
                    ),
                    TextButton(
                        child:Text("Nouvel Utilisateur",
                            style: TextStyle(fontSize: 22,
                                color: Colors.white,
                                fontFamily: 'against')),
                        onPressed:(){
                          Navigator.pop(context);
                          Navigator.pushNamed(context, '/inscription');
                        }),
                  ] ),
            )));



  }
  Future<void> _onAuthentifier(BuildContext context) async {
    SnackBar snackBar = SnackBar(content: Text(""));
    if(!txt_login.text.isEmpty && !txt_password.text.isEmpty){

     // try {
       // final  credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: txt_login.text;
          password: txt_password.text;
      //  );
        Navigator.pop(context);
        Navigator.pushNamed(context, '/home');
    //  }
     // on FirebaseAuthException catch (e) {
       // if (e.code == 'user-not-found') {
       //   SnackBar snackBar = SnackBar(content: Text("Utilisateur inexistant"));

       // } else if (e.code == 'worng-password') {

      //    SnackBar snackBar = SnackBar(content: Text("verifer votre mot de passe"));
      //  }
    //  } catch (e) {
      //  print(e);
     // }
    }
    else {
      const snackBar= SnackBar(content: Text('ID ou mot de paase vides'),);
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }














    /*prefs=await SharedPreferences.getInstance();
    String log=prefs.getString("login")?? 'Identifiant';
    String psw=prefs.getString("password")?? 'Password';
    print(txt_password.text);
    if(txt_login.text==log &&txt_password.text==psw){
      prefs.setBool("connecte", true);
      Navigator.pop(context);
      Navigator.pushNamed(context, '/home');
    }
    else{
      Widget yesButton=TextButton(
        child: Text("OK"),
        onPressed:(){
          Navigator.of(context).pop();
        },
      );
      AlertDialog alert =AlertDialog(
        title: Text("Erreur",
            style:TextStyle(
              fontFamily: 'freitag_display',
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )),


        content:Text("Vérifier votre identifiant et votre mot de passe",
            style: TextStyle(
              fontFamily:'freitag_display',
              fontSize: 20,
            )),
        actions: [
          yesButton,
        ],
      );

      showDialog(context:context,
          builder:(BuildContext context){
            return alert;
          });
    }*/
  }
}
