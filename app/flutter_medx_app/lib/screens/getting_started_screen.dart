import 'package:flutter/material.dart';
import './login_screen.dart';


class GettingStartedScreen extends StatelessWidget{
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container
      (
        color: Colors.white,
        child: Padding(
          padding:  const EdgeInsets.all(20),
        child: Column(
        children: <Widget>[
                Expanded(
                  child:
                      Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:<Widget>[
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: NetworkImage("https://www.imagediamond.com/blog/wp-content/uploads/2019/07/hair-face-dp.jpg",), fit: BoxFit.cover) 
                    ),
                ),

                SizedBox(height: 40,),
                Text('This is our title', 
                style: TextStyle(fontSize: 22,
                color: Theme.of(context).primaryColor,
                ),
                ),
                SizedBox(height: 10,),
                Text('Loreum ipsium',
                textAlign: TextAlign.center,
                ),
             
          ],
          ),
                  
        ),
        SizedBox(height: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
          FloatingActionButton(
            onPressed: () {
              Navigator.of(context).pushNamed(LoginScreen.routeName);
            },
            child: Text('Login',style: TextStyle(fontSize:18,),),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
              
            ),
            
            backgroundColor: Theme.of(context).primaryColor,
           
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Text(' ', style: TextStyle(fontSize: 15,),),
            ],),
          
        ],)
                  ],
        ), 
    ),
    ),
    );
  }
}