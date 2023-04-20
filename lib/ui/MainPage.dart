import 'package:flutter/material.dart';
import 'package:guvenligecis/ui/Anasayfa.dart';
import 'package:guvenligecis/ui/BottomNavBar.dart';
import 'package:guvenligecis/ui/tabMenu/KisiselBilgiler.dart';
import 'package:guvenligecis/ui/tabMenu/Mesaj.dart';
import 'tabMenu/Iletisim.dart';


class mainPage extends StatefulWidget {
  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  final menuItemlist = const <MenuItem>[
    MenuItem(Icons.home, ''),
    MenuItem(Icons.person, ''),
    MenuItem(Icons.phone, ''),
    MenuItem(Icons.message, ''),

  ];

  int index = 0;
  final _buildBody = const <Widget> [Anasayfa(),KisiselBilgiler(),Iletisim(),Mesaj()];
  BottomNavigationBar get buildNavigationBar {
    return BottomNavigationBar(


      type: BottomNavigationBarType.shifting,
      currentIndex: index,
      onTap: (x) {
        setState(() {
          index = x;
        });
      },
      elevation: 16.0,
      showUnselectedLabels: true,
      unselectedItemColor: Colors.white54,
      selectedItemColor: Colors.white,
      items: menuItemlist
          .map((MenuItem menuItem) => BottomNavigationBarItem(
        backgroundColor: Colors.blue,
        icon: Icon(menuItem.iconData),
        label: menuItem.text,
      ))
          .toList(),

      /*type: BottomNavigationBarType.fixed,
    //     unselectedItemColor: Colors.green,
         selectedItemColor: Colors.yellow,
         backgroundColor: Colors.blue,
         currentIndex: index,
         onTap:(x){
           setState(() {
             index = x;
           });
         },
         items: [
       BottomNavigationBarItem(icon: Icon(Icons.menu),label:"Menu"),
       BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle),label:"Kişisel Bilgiler"),
       BottomNavigationBarItem(icon: Icon(Icons.phone),label:"İletişim"),
       BottomNavigationBarItem(icon: Icon(Icons.message),label:"Bize yazın"),*/

    );
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
  Widget build(BuildContext context) {
    return Scaffold(

        bottomNavigationBar: buildNavigationBar,
        body: _buildBody[index],
    );
  }
  class AnasayfaState extends State<Anasayfa>
  {
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

  body:Center(

  child: GridView.count(
  crossAxisCount: 2,
  children: menu
      .map((poke) => Padding(
  padding: const EdgeInsets.all(2.0),
  child: InkWell(

  onTap: () {
  AppNavigator.onGenerateRoute(poke.title,context);
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
}
