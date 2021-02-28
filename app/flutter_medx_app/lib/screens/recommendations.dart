import 'package:flutter/material.dart';
import './main_drawer.dart';
import './article_screen.dart';

class RecommendationsScreen extends StatelessWidget{
  static const routeName = '/recommendations-screen';
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title:Text('Recommendations'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('recommendations sections',
            style:TextStyle(fontSize:22,),),
             ElevatedButton(child: Text('Go to Article section'),
            onPressed:() {
              Navigator.push(context, new MaterialPageRoute(
   builder: (context) => new ArticleScreen())
 );
            },
            ),
          ],
        ),
      ),
    );
  } 
}