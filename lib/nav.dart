import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'homeScreen.dart';
import 'searchScreen.dart';
import 'postScreen.dart';
import 'messagesScreen.dart';
import 'profileScreen.dart';

class Nav extends StatefulWidget {
  const Nav({ Key? key }) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[//thrown in a list
Home(),
Search(),
Post(),
Messages(),
Profile(),
  ];

void _onItemTap(int index){
  setState(() {
    _selectedIndex = index;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Knightlife but Better'),
        backgroundColor: Color(0xFFB71C1C),
        
      ),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex), //displays which widget name that is selected
      ),
      bottomNavigationBar: BottomNavigationBar
      (items: const<BottomNavigationBarItem>[

        BottomNavigationBarItem( //home
          icon: Icon(Icons.home,),
        title: Text('Home'),
  
        ),

         BottomNavigationBarItem(//search
          icon: Icon(Icons.search),
        title: Text('Search'),
        ),

         BottomNavigationBarItem(//post
          icon: Icon(Icons.post_add),
        title: Text('Post'),
        ),

         BottomNavigationBarItem(//messages
          icon: Icon(Icons.message),
        title: Text('Messages'),
        ),

         BottomNavigationBarItem(//profile 
          icon: Icon(Icons.person),
        title: Text('Profile'),
        ),

      ],
      currentIndex: _selectedIndex, 
      onTap: _onItemTap, //call when taped
      fixedColor: Colors.blue, //changes color on top
      backgroundColor: Color(0xFFB71C1C),
      type: BottomNavigationBarType.fixed,
      ),
    );
  }
}