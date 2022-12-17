
import 'package:flutter/material.dart';
import 'package:adhkari/morningadhkar.dart';
class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);
  List<String> titles=["أذكار الصباح","أذكار المساء","أذكار الاستيقاظ من النوم","أذكار النوم"];

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC8E6C9),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("أذكاري"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              for(var i in titles )
                Container(
                  height: 100,
                  width:170,
                  decoration: BoxDecoration(
                      color: Colors.green, borderRadius: BorderRadius.circular(30)  ,boxShadow: [BoxShadow(blurRadius: 8,color: Colors.white70,spreadRadius: 1,offset: Offset.fromDirection(-8))  ]    ),

                  child: InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>AdkharPage(title: i)));
                    },
                    child: Center(
                      child: Text(
                        i,
                        style: TextStyle()
                        ,
                      ),
                    )
                    ,
                  ),
                ),


            ],
          ),
        ),
      )

      ,
    );
  }
}
