import 'dart:convert';
import 'dikr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AdkharPage extends StatefulWidget {
  String title;
  AdkharPage({ required this.title}) ;


  @override
  _AdkharPageState createState() => _AdkharPageState();
}

class _AdkharPageState extends State<AdkharPage> {
  List<Dikr> ? adhkar;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadAdhkar();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.separated(itemBuilder: (context,index){
          return Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(color:Colors.white,boxShadow: [ BoxShadow(blurRadius: 7,color: Colors.lightGreenAccent,spreadRadius: 4 )]),
                  child: ListTile(
                    title:Text('${adhkar![index].content}',textDirection: TextDirection.rtl,),
                  ),

                ),
              ), TextButton(onPressed: () { setState(() {
                if(adhkar![index].count !=0)adhkar![index].count =((adhkar![index].count )!-1);
              }); }, child: Text('${adhkar![index].count}',style: TextStyle(color: Colors.lightBlueAccent),),
              )
            ],
          );
        }, separatorBuilder: (context,index)=>const Divider(height: 0.8,), itemCount: adhkar!.length),
      ),

    );
  }
  loadAdhkar()async{
    adhkar=[];
    DefaultAssetBundle.of(context).loadString("assets/DataBase/adhkar.json").then((data) {
      var response=json.decode(data);
      response.forEach((dikr){
        Dikr _dikr=Dikr.fromJson(dikr);
        if(_dikr.section==widget.title)adhkar!.add(_dikr);
      });
      setState(() {

      });
    });

  }
}