import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  HomePageState createState() {
    return HomePageState();
  }

}


class HomePageState extends State<HomePage> {

  int _currentIndex = 0;
  final List<Widget> _children = [
      Text('Home'),
      Text('Notify'),
      Text('Map'),
      Text('Profile'),
      Text('Setup')
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
      ),
      
      body: Center(
        child:_children[_currentIndex]
      ), 

      bottomNavigationBar:new Theme(
        data: Theme.of(context).copyWith(
        canvasColor: Colors.blue,
      ),
        
        child: new BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            }
          );
        },
       
       currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem( 
            icon: Icon(Icons.dashboard),
            title: Text("Home")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text("Notify")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text("Map")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text("Setup")
          ),
        ],

      ),
    ),

    );
  }
}