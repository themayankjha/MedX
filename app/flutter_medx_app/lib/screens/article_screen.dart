import 'package:flutter/material.dart';
import './main_drawer.dart';


class ArticleScreen extends StatelessWidget{
  static const routeName = '/article-screen';
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title:Text('Articles Section'),),
      drawer: MainDrawer(),
        
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox( 
                height: 20, 
              ), 
              
              SizedBox( 
                height: 20, 
              ), 
              ElevatedButton(child: Text('Go to Article section'),
            onPressed:() {
              Navigator.of(context).pushNamed(ArticleScreen.routeName);
            },
            ),
            
            ElevatedButton(child: Text('Go to Article section'),
            onPressed:() {
              Navigator.of(context).pushNamed(ArticleScreen.routeName);
            },
            ),
            
            
            
            
          ],
        ),
      ),
    );
  } 
}