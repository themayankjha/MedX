import 'package:flutter/material.dart';
import './home_screen.dart';
import './details_screen.dart';
import './article_screen.dart';
import './login_screen.dart';
import './recommendations.dart';
import './full_report.dart';
import './symptoms_screen.dart';

class MainDrawer extends StatelessWidget{
  @override 
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width:double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height:100,
                    margin: EdgeInsets.only(
                      top:30,
                      bottom: 10,
                    ),
                    decoration: BoxDecoration( 
                      shape: BoxShape.circle,
                      image: DecorationImage(image: NetworkImage('https://www.imagediamond.com/blog/wp-content/uploads/2019/07/hair-face-dp.jpg',
                      ),
                      fit: BoxFit.fill
                      ),
                      ),
                  ),
                  Text(
                    'Tanishka Vaswani',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                    Text(
                    'tanishkavaswani1@gmail.com',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),

          ListTile(
            leading: Icon(Icons.person),
            title:Text('Home Page', style: TextStyle(fontSize: 18,
            ),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(HomeScreen.routeName);
            },
          ),

           ListTile(
            leading: Icon(Icons.person),
            title:Text('Symptoms Page', style: TextStyle(fontSize: 18,
            ),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(SymptomsScreen.routeName);
            },
          ),

           ListTile(
            leading: Icon(Icons.settings),
            title:Text('Critical Section', style: TextStyle(fontSize: 18,
            ),
            ),
           onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(DetailsScreen.routeName);
            },
          ),

           ListTile(
            leading: Icon(Icons.settings),
            title:Text('Full Report', style: TextStyle(fontSize: 18,
            ),
            ),
           onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(FullReportScreen.routeName);
            },
          ),

          ListTile(
            leading: Icon(Icons.settings),
            title:Text('Recommendations', style: TextStyle(fontSize: 18,
            ),
            ),
           onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(RecommendationsScreen.routeName);
            },
          ),

         

          ListTile(
            leading: Icon(Icons.arrow_back),
            title:Text('Articles', style: TextStyle(fontSize: 18,
            ),
            ),
           onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(ArticleScreen.routeName);
            },
          ),

           ListTile(
            leading: Icon(Icons.arrow_back),
            title:Text('Logout', style: TextStyle(fontSize: 18,
            ),
            ),
           onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(LoginScreen.routeName);
            },
           ),
        ],
      ),
    );
  }
}