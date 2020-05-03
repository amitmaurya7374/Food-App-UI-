import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/deliveryicon.dart';
import '../models/dish.dart';
import '../widgets/dish_card.dart';

import '../widgets/bottom_navigation_bar.dart';

class HomePageScreen extends StatelessWidget {
  final List<Dish> dish = [
    Dish(
      dishImage: 'assets/images/vegan_food_swapa.png',
      dishTitle: 'Vegan Food Swaps',
      dishSubTitle: 'Fast Food',
      price: 200,
    ),
    Dish(
        dishImage: 'assets/images/new_dessert_slice.png',
        dishTitle: 'New Dessert Slice',
        dishSubTitle: 'Desserts',
        price: 250),
    Dish(
        dishImage: 'assets/images/Lemon_juices.png',
        dishTitle: 'Lemon Juices',
        dishSubTitle: 'Drinks',
        price: 100),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 15),
              child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Hi Willey',
                style: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Color(0xff3d404c),
              ),
                ),
              ),
              Text(
                'What\'s New',
                style: GoogleFonts.roboto(
              textStyle: TextStyle(
                color: Color(0xff3d404c),
                fontWeight: FontWeight.w400,
                fontSize: 18.0,
              ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              DeliveryIcons(
                image: 'assets/images/delivery.png',
                onpress: () {
              print('Free delivery got pressed');
                },
                title: 'Free\n Delivery',
              ),
              DeliveryIcons(
                image: 'assets/images/fast_delivery.png',
                onpress: () {
              print('fast delivery is pressed');
                },
                title: 'Fast\n Delivery',
              ),
              DeliveryIcons(
              image: 'assets/images/dessert.png',
              onpress: () {
                print('Fresh Desserts is pressed');
              },
              title: 'Fresh\n Desserts  '),
              DeliveryIcons(
              image: 'assets/images/free_drinks.png',
              onpress: () {
                print('Fresh Drinks is pressed');
              },
              title: 'Fresh\n Drinks'),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Offers For You',
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                DishCard(
              imageLink: 'assets/images/south_indian_food.png',
              imageDishTitle: 'South Indian Food',
              onpressed: () {
                print('Card is pressed');
                Navigator.of(context).pushNamed('/orderpage');
              },
                ),
                DishCard(
              imageLink: 'assets/images/spicy_burger.png',
              imageDishTitle: 'Spicy Burger',
              onpressed: () {
                print('Card is pressed');
                Navigator.of(context).pushNamed('/orderpage');
              },
                ),
                DishCard(
              imageLink: 'assets/images/unsplash_food.jpg',
              imageDishTitle: 'Salad',
              onpressed: () {
                print('Card is pressed');
                Navigator.of(context).pushNamed('/orderpage');
              },
                ),
                DishCard(
              imageLink: 'assets/images/pasta.jpg',
              imageDishTitle: 'Pasta',
              onpressed: () {
                print('Card is pressed');
                Navigator.of(context).pushNamed('/orderpage');
              },
                ),
                DishCard(
              imageLink: 'assets/images/ice_cream.jpg',
              imageDishTitle: 'Ice Cream',
              onpressed: () {
                print('Card is pressed');
                Navigator.of(context).pushNamed('/orderpage');
              },
                ),
                DishCard(
              imageLink: 'assets/images/brown_bread.jpg',
              imageDishTitle: 'Brown Bread',
              onpressed: () {
                print('Card is pressed');
                Navigator.of(context).pushNamed('/orderpage');
              },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: <Widget>[
              Text(
                'Restaurants',
                style: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
                ),
              ),
              SizedBox(
                width: 150,
              ),
              IconButton(
                onPressed: () {
              print('Filter icon is pressed');
                },
                splashColor: Colors.red,
                icon: Icon(
              Icons.filter_list,
              color: Color(0xfffb1f1f),
              size: 20,
                ),
              ),
              Text(
                'Filter',
                style: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontSize: 16,
                color: Color(0xff9199aa),
              ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Card(
              elevation: 6.0,
              margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: ListTile(
                contentPadding: EdgeInsets.all(15),
                onTap: () {
        print('Listtile is pressed');
                },
                title: Text(
        dish[index].dishTitle,
        style: GoogleFonts.roboto(
          textStyle: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w400,
            color: Color(0xff3d404c),
          ),
        ),
                ),
                leading: Card(
        child: Image.asset('${dish[index].dishImage}'),
                ),
                subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            dish[index].dishSubTitle,
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: <Widget>[
              Text('\₹${dish[index].price}'),
              IconButton(
                icon: Icon(Icons.star_border),
                onPressed: () {
        print('Star pressed');
                },
              ),
              Text('4.5 rating'),
              IconButton(
                icon: Icon(
        Icons.favorite_border,
        color: Colors.red,
                ),
                onPressed: () {
        print('Favorite pressed');
                },
              )
            ],
          ),
        ],
                ),
              ),
                );
              },
              itemCount: dish.length,
            ),
          ),
        ],
                ),
            ),
      ),
      bottomNavigationBar: BottonNavigatorSheet(),
    );
  }
}
