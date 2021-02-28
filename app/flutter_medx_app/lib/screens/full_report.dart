import 'package:flutter/material.dart';
import './main_drawer.dart';
import './recommendations.dart';

class FullReportScreen extends StatelessWidget{
  static const routeName = '/fullReport-screen';
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title:Text('Full Report'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: 300.0,
                  child: Text(
    'at risk for: ',
  maxLines: 25,
),
                ),

             ElevatedButton(child: Text('Go to Recommendations section'),
            onPressed:() {
              Navigator.of(context).pushNamed(RecommendationsScreen.routeName);
            },
            ),
              
              ],
            ),
          ],
        ),
      ),
    );
  } 
}