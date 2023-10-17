import 'package:flutter/material.dart';
import 'package:voyage/menu/drawer.widget.dart';
import 'galleriedetails.page.dart';

class GalleriePage extends StatelessWidget{
  TextEditingController txt_keyWord = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Page Galleri")),
        body: Column(
          children: [
            Container (
              padding: EdgeInsets.all(10),
              child: TextFormField(
                controller: txt_keyWord,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.file_copy),
                    hintText: "KeyWord",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Container (
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50)),
                  onPressed: (){
                    _onGalleriData(context);
                  },
                  child: Text('Chercher', style: TextStyle(fontSize: 22),),)
            ),
          ],
        ));
  }
  void _onGalleriData(BuildContext context) {
    String v=txt_keyWord.text;
    Navigator.push(context, MaterialPageRoute(builder: (context)=> GallerieDetailsPage(v)));
    txt_keyWord.text="";
  }
}

























