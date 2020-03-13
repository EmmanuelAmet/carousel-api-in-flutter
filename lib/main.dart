import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Integration')
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(15.0),
              child: CircleAvatar(
                radius: 50.0,
                child: Icon(Icons.accessible_forward, size: 60.0,),
              ),
            ),
            Divider(),

            ListTile(
              onTap: (){

              },
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),

            ListTile(
              onTap: (){

              },
              leading: Icon(Icons.share),
              title: Text('Share'),
            ),

            ListTile(
              onTap: (){

              },
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),

            ListTile(
              onTap: (){

              },
              leading: Icon(Icons.person_pin),
              title: Text('Profile'),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,

            child: Card(
              elevation: 5.0,
              child: Carousel(
                images: [
                  NetworkImage('https://images.unsplash.com/photo-1575550959106-5a7defe28b56?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                  NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
                  NetworkImage('https://images.unsplash.com/photo-1509484144363-fdc52a66375c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                  NetworkImage('https://images.unsplash.com/photo-1575550959106-5a7defe28b56?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                  NetworkImage('https://images.unsplash.com/photo-1575550959106-5a7defe28b56?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),

                ],
                dotSize: 4.0,
                dotSpacing: 15.0,
                dotColor: Colors.black,
                indicatorBgPadding: 5.0,
                dotBgColor: Colors.red.withOpacity(0.5),
                borderRadius: true,
                  dotIncreasedColor: Colors.orange
              ),
            ),
          ),

          Container(
            height: 300,

            child: Card(
              child: Carousel(
                  images: [
                    NetworkImage('https://images.unsplash.com/photo-1575550959106-5a7defe28b56?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                    NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
                    NetworkImage('https://images.unsplash.com/photo-1509484144363-fdc52a66375c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                    NetworkImage('https://images.unsplash.com/photo-1575550959106-5a7defe28b56?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                    NetworkImage('https://images.unsplash.com/photo-1575550959106-5a7defe28b56?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                  ],
                  dotSize: 4.0,
                  dotSpacing: 15.0,
                  dotColor: Colors.black,
                  indicatorBgPadding: 5.0,
                  dotBgColor: Colors.red.withOpacity(0.5),
                  borderRadius: true,
                  dotIncreasedColor: Colors.orange
              ),
            ),
          ),

          Container(
            child: CircularProgressIndicator(),
          )
        ],
      ),


    );
  }
}
