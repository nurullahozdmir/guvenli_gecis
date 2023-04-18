
import 'package:flutter/material.dart';
import 'package:guvenligecis/ui/Duyurular.dart';
import 'package:guvenligecis/ui/Devamsizlik.dart';


class Anasayfa extends StatefulWidget {
  @override
  AnasayfaState createState() {
    return new AnasayfaState();
  }
}

class AnasayfaState extends State<Anasayfa>
{

   BottomNavigationBar get buildNavigationBar {
     return BottomNavigationBar(
         type: BottomNavigationBarType.fixed,
         backgroundColor: Colors.blue,
         items: [
       BottomNavigationBarItem(icon: Icon(Icons.menu),label:"Menu"),
       BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle),label:"Kişisel Bilgiler"),
       BottomNavigationBarItem(icon: Icon(Icons.phone),label:"İletişim"),
       BottomNavigationBarItem(icon: Icon(Icons.message),label:"Bize yazın"),

     ]);
   }
 List<Baslik> menu = [
    Baslik("Duyurular", "assets/images/guvenligecis.png"),
    Baslik("Devamsızlık", "assets/images/guvenligecis.png"),
    Baslik("Bildirimler", "assets/images/guvenligecis.png" ),
    Baslik("Ders Notları", "assets/images/guvenligecis.png"),
    Baslik("Galeri", "assets/images/guvenligecis.png" ),
    Baslik("Servis", "assets/images/guvenligecis.png"),
    Baslik("Raporlar", "assets/images/guvenligecis.png" ),
    Baslik("Aktiviteler", "assets/images/guvenligecis.png"),
  ];


  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text("Güvenli  Geçiş"),
        ),
          bottomNavigationBar: buildNavigationBar,

        body: Center(

          child: GridView.count(
            crossAxisCount: 2,
            children: menu
                .map((poke) => Padding(
              padding: const EdgeInsets.all(2.0),
              child: InkWell(

                onTap: () {
                      AppNavigator.onGenerateRoute(poke.title);
                },


                child: Hero(
                  tag: poke.image,
                  child: Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                            height: MediaQuery.of(context).size.height *
                              0.1,
                          width:
                          MediaQuery.of(context).size.width * 0.2,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new AssetImage(poke.image)))
                        ),
                       Text(
                          poke.title,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ))
                .toList(),
          ),
        ),

    );
  }

}
class Baslik{

  String title;
  String image;
  Baslik(this.title,this.image);

}
class AppNavigator {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey();
 static Route onGenerateRoute(String settings) {
   switch (settings) {
     case "Duyurular" :
       return MaterialPageRoute(builder: (_) => duyurular());
       break;

     case "Devamsızlık":
       return MaterialPageRoute(builder: (_) => devamsizlik());
       break;

     case "":
       return MaterialPageRoute(builder: (_) => duyurular());
       break;
     default:
       return MaterialPageRoute(builder: (_) => duyurular());
   }
 }

}



