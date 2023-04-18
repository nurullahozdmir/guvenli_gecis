import 'package:flutter/material.dart';

class devamsizlik extends StatefulWidget {

  @override
  _devamsizlikState createState() => _devamsizlikState();
}
class _devamsizlikState extends State<devamsizlik>{

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text("Devamsızlık"),
          centerTitle: true,
          backgroundColor: Colors.blue,

        ),
        backgroundColor: Colors.white,
        body:new Column(

            children: <Widget>[
              SizedBox(height: 1 ,) ,
              Container(
                height: 50.0,
                width: double.maxFinite,
                color: Colors.lightBlue,
                child: Padding(
                    padding: const EdgeInsets.only(left: 10.0,top:10.0,bottom: 10.0),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: Icon(Icons.calendar_today_outlined, size: 25),
                          ),
                          TextSpan(
                            text: "  Özürlü Devamsızlık",
                              style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal)
                          ),
                        ],
                      ),
                    )

                )
            ),

              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/9.2,
                  margin: EdgeInsets.fromLTRB(8 , 8 , 8 , 0) ,
                  child: FractionallySizedBox(
                      heightFactor: 1.0 ,
                      widthFactor: 1.0 ,
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0)) ,
                          child: Container(
                            padding: EdgeInsets.only(right: 30 , left: 30) ,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(40.0))) ,
                            child: Column(

                              crossAxisAlignment: CrossAxisAlignment.end ,
                              mainAxisSize: MainAxisSize.min ,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween ,
                                  children: <Widget>[

                                    Text(
                                        'Raporlu' ,
                                        style: new TextStyle(
                                            fontWeight: FontWeight.bold)
                                    ) ,
                                    Text(
                                      "4",

                                    ) ,
                                  ] ,
                                ) ,
                                SizedBox(height: 20 ,) ,

                                Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween ,
                                  children: <Widget>[

                                    Text(
                                        'Özürlü Devamsızlık Toplamı' ,
                                        style: new TextStyle(
                                            fontWeight: FontWeight.bold)
                                    ) ,
                                    Text(
                                        "4 gün"
                                    ) ,
                                  ] ,
                                ) ,
                              ] ,
                            ) ,
                          )
                      )
                  )
              ),
              Container(
                  height: 50.0,
                  width: double.maxFinite,
                  color: Colors.lightBlue,
                  child: Padding(
                      padding: const EdgeInsets.only(left: 10.0,top:10.0,bottom: 10.0),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(Icons.calendar_today_outlined, size: 25),
                            ),
                            TextSpan(
                              text: "  Özürsüz Devamsızlık",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal)
                            ),
                          ],
                        ),
                      )

                  )
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/8,
                  margin: EdgeInsets.fromLTRB(8 , 8 , 8 , 0) ,
                  child: FractionallySizedBox(
                      heightFactor: 1.0 ,
                      widthFactor: 1.0 ,
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0)) ,
                          child: Container(
                            padding: EdgeInsets.only(right: 30 , left: 30) ,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(40.0))) ,
                            child: Column(

                              crossAxisAlignment: CrossAxisAlignment.end ,
                              mainAxisSize: MainAxisSize.min ,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween ,
                                  children: <Widget>[

                                    Text(
                                        'Yarım Gün' ,
                                        style: new TextStyle(
                                            fontWeight: FontWeight.bold)
                                    ) ,
                                    Text(
                                      "0.5",

                                    ) ,
                                  ] ,
                                ) ,
                                SizedBox(height: 20 ,) ,

                                Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween ,
                                  children: <Widget>[

                                    Text(
                                        'Tam Gün' ,
                                        style: new TextStyle(
                                            fontWeight: FontWeight.bold)
                                    ) ,
                                    Text(
                                        "7"
                                    ) ,
                                  ] ,
                                ) ,
                                SizedBox(height: 20 ,) ,
                                Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween ,
                                  children: <Widget>[

                                    Text(
                                        'Özürsüz Devamsızlık Toplamı' ,
                                        style: new TextStyle(
                                            fontWeight: FontWeight.bold)
                                    ) ,
                                    Text(
                                        "7,5 gün"

                                    ) ,
                                  ] ,
                                ) ,
                              ] ,


                            ) ,
                          )
                      )
                  )
              ),
              Container(
                  height: 50.0,
                  width: double.maxFinite,
                  color: Colors.lightBlue,
                  child: Padding(
                      padding: const EdgeInsets.only(left: 10.0,top:10.0,bottom: 10.0),
                      child:
                      RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(Icons.calendar_today, size: 25),
                            ),
                            TextSpan(
                              text: "  Diğer(İzinli)",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal)
                            ),
                          ],
                        ),
                      )
                  )
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/8,
                  margin: EdgeInsets.fromLTRB(8 , 8 , 8 , 0) ,
                  child: FractionallySizedBox(
                      heightFactor: 1.0 ,
                      widthFactor: 1.0 ,
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0)) ,
                          child: Container(
                            padding: EdgeInsets.only(right: 30 , left: 30) ,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(40.0))) ,
                            child: Column(

                              crossAxisAlignment: CrossAxisAlignment.end ,
                              mainAxisSize: MainAxisSize.min ,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween ,
                                  children: <Widget>[

                                    Text(
                                        'Faaliyet' ,
                                        style: new TextStyle(
                                            fontWeight: FontWeight.bold)
                                    ) ,
                                    Text(
                                      "1",

                                    ) ,
                                  ] ,
                                ) ,
                                SizedBox(height: 20 ,) ,

                                Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween ,
                                  children: <Widget>[

                                    Text(
                                        '2,5' ,
                                        style: new TextStyle(
                                            fontWeight: FontWeight.bold)
                                    ) ,
                                    Text(
                                        "7"
                                    ) ,
                                  ] ,
                                ) ,
                                SizedBox(height: 20 ,) ,
                                Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween ,
                                  children: <Widget>[

                                    Text(
                                        'Süre Toplamı' ,
                                        style: new TextStyle(
                                            fontWeight: FontWeight.bold)
                                    ) ,
                                    Text(
                                        "3.5 gün"

                                    ) ,
                                  ] ,
                                ) ,
                              ] ,


                            ) ,
                          )
                      )
                  )
              ),

            ]
        )
    );
  }
}

