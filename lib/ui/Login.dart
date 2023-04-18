import 'dart:convert';
import 'package:guvenligecis/model/userLogin.dart';
import 'package:flutter/material.dart';
import 'package:guvenligecis/ui/Anasayfa.dart';
import 'package:guvenligecis/util/Global.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

//SharedPreferences localStorage;
TextEditingController username = new TextEditingController(text: 'nozdemir');
TextEditingController passaword = new TextEditingController(text: 'gc36AZ');

class _LoginState extends State<Login> {
/*  static Future init() async {
     localStorage = await SharedPreferences.getInstance();
  }*/
  var url =
      Uri.parse("https://emasars.iski.gov.tr/EMasaRS/resources/user/login");

  userLogin? user;

  @override
  void initState() {
    super.initState();
  }

  Future<dynamic> _login() async {
    var res = await http.post(url, headers: {
      "Content-Type": "application/x-www-form-urlencoded"
    }, body: {
      'password': passaword.text,
      'username': username.text,
      'platform': 'MOBILE',
      'clientInfo': 'Vestel Venus Z10',
      'imsi': '123456'
    });
    var decodedJson = jsonDecode(res.body);
    user = userLogin.fromJson(decodedJson);

    if (user!.status!.cODE == 200) {
      Global.token = user!.token!;

      Navigator.push(
        context,
        new MaterialPageRoute(
          //     builder: (context) => new anasayfa(),
          builder: (context) => new Anasayfa(),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Kullanıcı adı veya şifre hatalı")));
    }

    //  setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Giriş Sayfası"),
          centerTitle: true,
          backgroundColor: Colors.blue),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 238,
                    height: 230,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('assets/images/guvenligecis.png',width: 200,height: 200,)),
              ),
            ),
            //   if (localStorage != null)username.text=localStorage.get('email'),  passaword.text = localStorage.get('password'),
            SizedBox(height: 20 ,) ,

            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Kullanıcı Adı',
                    hintText: 'Kullanıcı Adı'),
                controller: username,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Şifre',
                    hintText: 'Şifre Giriniz'),
                controller: passaword,
              ),
            ),

            Container(
              height: 20,
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () async {
                  _login();
                },
                child: Text(
                  'Giriş',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 130,
            ),
          ],
        ),
      ),
    );
  }
}
