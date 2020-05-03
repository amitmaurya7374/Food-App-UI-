import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/quantity_widget.dart';
import '../widgets/amountsubDetails.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(15),
                    height: 120,
                    width: 120,
                    child: Image.asset('assets/images/tacos.png'),
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Chicken Salad Wrap',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Fast Food',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 18,
                            color: Color(0xff785e4d),
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      QuantityWidget(),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Hotel Details',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Image.asset('assets/images/tag.png'),
                    Column(
                      children: <Widget>[
                        Text('Apply cuopon code'),
                        RaisedButton(
                          onPressed: () {},
                          elevation: 6.0,
                          color: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'Enter',
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_forward_ios),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Divider(
                  thickness: 2,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Amount Details',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    AmountSubDetails(
                      chargeTitle: 'Food Charges',
                      chargeAmount: '₹ 150',
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    AmountSubDetails(
                      chargeTitle: 'Delivery Charges',
                      chargeAmount: '₹ 30',
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    AmountSubDetails(
                      chargeTitle: 'Offers',
                      chargeAmount: '₹ -30',
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    AmountSubDetails(
                      chargeTitle: 'Total',
                      chargeAmount: '₹ 150',
                    ),
                    Divider(
                      thickness: 1,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Payment Method ',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    PaymentOptions('Debit Card'),
                    SizedBox(
                      height: 5,
                    ),
                    PaymentOptions('Net Banking'),
                    SizedBox(
                      height: 5,
                    ),
                    PaymentOptions('Cash On Delivery'),
                    SizedBox(
                      height: 5,
                    ),
                    PaymentOptions('Others'),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: <Widget>[
                    Image.asset('assets/images/scooter.png'),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Delivery to Home Address',
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Delivery in 25 mins',
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Add Address',
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 13,
                              color: Color(0xff3d404c),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1,
              ),
              SizedBox(
                height: 10.0,
              ),
              Align(
                alignment: Alignment.center,
                child: RaisedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 90, vertical: 15),
                    child: Text(
                      'Proceed',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  elevation: 6.0,
                  color: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height: 40,),
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
            icon: Icon(Icons.shopping_cart, color: Colors.red),
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

class PaymentOptions extends StatelessWidget {
  final String cardName;
  PaymentOptions(this.cardName);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.radio_button_unchecked),
          onPressed: () {},
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          cardName,
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
