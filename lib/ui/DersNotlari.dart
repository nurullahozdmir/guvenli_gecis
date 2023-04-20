import 'package:flutter/material.dart';
import 'package:guvenligecis/ui/Devamsizlik.dart';
import 'package:guvenligecis/ui/Duyurular.dart';


class DersNotlari extends StatefulWidget {
  @override
  _DersNotlariState createState() {
    return new _DersNotlariState();
  }
  const DersNotlari({Key? key}) : super(key: key);

}
class _DersNotlariState extends State<DersNotlari>
{

  var kategori = {"Dersler","Sınav Puanları","Performans","Uygulama","Proje"};
  @override
  void initState() {
    super.initState();
  }
  git remote set-url origin https://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@github.com/nurullahozdmir/guvenli_gecis.git

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ders Notları"),
      ),
      body:Container(
          height: 120 ,
          width: double.maxFinite ,
          margin: const EdgeInsets.only(left: 5) ,
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: kategori.length ,
              scrollDirection: Axis.horizontal ,
              itemBuilder: (BuildContext context , int index) {
                return Container(
                    margin: const EdgeInsets.only(right: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment
                            .center,
                        children: [
                          Container(

                            child: InkWell(
                              onTap: () {
                                switch (index)
                                {
                                  case 0:

                                    break;
                                  case 1:
                                    Navigator.push(context,MaterialPageRoute(builder: (context) => devamsizlik()));

                                    break;
                                  case 2:
                                    Navigator.push(context,MaterialPageRoute(builder: (context) => duyurular()));

                                    break;
                                }


                              },),
                            margin: const EdgeInsets.only(
                                right: 20) ,

                            width: 80 ,
                            height: 80 ,
                          ) ,
                          Container(
                              width: 80 ,
//   mainAxisAlignment: MainAxisAlignment.end,
                              child: Text(kategori.elementAt(index),
                                textAlign: TextAlign.left ,)
                          )
                        ]
                    )
                );
              }
          )

      ),

    );
  }
}








