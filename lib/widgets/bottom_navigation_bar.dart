import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class BottonNavigatorSheet extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color:Colors.red ,
          ),
          title: Text('home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          title: Text('search'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite_border,
            color: Colors.black,
          ),
          title: Text('Favorite'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart, color: Colors.black),
          title: Text('Cart'),
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.userAlt, color: Colors.black),
          title: Text('profile'),
        ),
      ],
    );
  }
}


//ToDo: make this statefull widget and do some work on bottomNavigator bar
//ToDo: handle the different screen size