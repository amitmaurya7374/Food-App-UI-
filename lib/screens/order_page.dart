import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/dish_card.dart';
import '../widgets/quantity_widget.dart';

class OrderPageScreen extends StatefulWidget {
  @override
  _OrderPageScreenState createState() => _OrderPageScreenState();
}

class _OrderPageScreenState extends State<OrderPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Color(0xff3d404c),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    Text(
                      'Hot Burger',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.favorite,
                        size: 28,
                        color: Color(0xfffb1f1f),
                      ),
                      onPressed: () {
                        //Implement favourite functionally
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.search,
                        size: 28,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  elevation: 6.0,
                  child: Image.asset(
                    'assets/images/hot_burger.png',
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Hot Chicken Burger',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    RaisedButton(
                      elevation: 6.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                        side: BorderSide(color: Colors.red, width: 2),
                      ),
                      color: Colors.white,
                      child: Text(
                        'Add',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      onPressed: () {
                        // impliment the add functionality
                        print('Add button pressed');
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: QuantityWidget(),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.location_on,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Delivery in 25 mins',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff3d404c),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Address',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff3d404c),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.edit,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton(
                elevation: 6.0,
                color: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                onPressed: () {
                  print('Order button is pressed');
                  Navigator.of(context).pushNamed('/paymentpage');

                },
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, bottom: 10.0, right: 80.0, left: 80.0),
                  child: Text(
                    'Order now',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
              //SizedBox(height: 20.0,),
              Divider(
                height: 50,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'Recommend',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(fontSize: 25),
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    DishCard(
                      imageLink: 'assets/images/burger1.png',
                      imageDishTitle: 'Veg Zinger Burger',
                      onpressed: () {},
                    ),
                    DishCard(
                      imageLink: 'assets/images/burger2.png',
                      imageDishTitle: 'Classic Chicken Zinger ',
                      onpressed: () {},
                    ),
                    DishCard(
                      imageLink: 'assets/images/ice_cream.jpg',
                      imageDishTitle: 'Ice Cream',
                      onpressed: () {
                        print('Card is pressed');
                      },
                    ),
                    DishCard(
                      imageLink: 'assets/images/brown_bread.jpg',
                      imageDishTitle: 'Brown Bread',
                      onpressed: () {
                        print('Card is pressed');
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            title: Text('home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.red,
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
      ),
    );
  }
}
