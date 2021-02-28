import 'package:flutter/material.dart';
import './main_drawer.dart';
import './full_report.dart';
import 'package:requests/requests.dart';

 dynamic json;
 dynamic username;
 dynamic heartfailpercent;
 dynamic heartfailsevierity;

class DetailsScreen extends StatelessWidget{
  static const routeName = '/details-screen';
 Future<void> createOrderMessage() async {
  var r = await Requests.get('https://totalyaccurateapi.herokuapp.com/dataexitpoint?username=lex');
  r.raiseForStatus();
 json = r.json();
 username=json['username'];
 heartfailpercent=json['heartfailpercent'];
 heartfailsevierity=json['heartfailsevierity'];

}

  @override
  Widget build(BuildContext context)
  {
    createOrderMessage();
    return Scaffold(
      appBar: AppBar(title:Text('Critical Section'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
  children: <Widget>[
     Text(' Hello $username  ',
            style:TextStyle(fontSize:22,),),
            
  ],
            ),
            Column(
              children: <Widget>[
            Row(
  children: <Widget>[
     Text('                 ',
            style:TextStyle(fontSize:22,),),
            Text('                 Percentage   ',
            style:TextStyle(fontSize:22,),),
           
    
  ],
            ),
            Row(
  children: <Widget>[
     Text('          Stroke                ',
            style:TextStyle(fontSize:22,),),
            Text('$heartfailpercent                 ',
            style:TextStyle(fontSize:22,),),
           
  ],
            ),
            Row(
  children: <Widget>[
     Text('           Heart Failure       ',
            style:TextStyle(fontSize:20,),),
            Text('$heartfailpercent                 ',
            style:TextStyle(fontSize:22,),),
            
    
  ],
            ),
              ],
            ),
            Row(
  children: <Widget>[
     ElevatedButton(child: Text('View Full Report'),
            onPressed:() {
              Navigator.push(context, new MaterialPageRoute(
   builder: (context) => new FullReportScreen())
 );
            }
     )
  ],
            ),
            
            
        ],
        ),
      ),
    );
  } 
}