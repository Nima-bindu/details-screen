import 'package:details_screen/details_screen.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 10.0),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 50.0,
              child: GridView.count(
                crossAxisCount: 1,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 25.0,
                childAspectRatio: 1.25,
                children: <Widget>[
                  _buildCard(
                      'Advil Tablets',
                      '\₹175.00',
                      'Anti-inflammatory drug that is used for treating pain, fever, and inflammation.',
                      'assets/advil.png',
                      false,
                      context),
                  _buildCard(
                      'Aspirin',
                      '\₹115.96',
                      'Medication used to reduce pain, fever, or inflammation.',
                      'assets/aspirin.png',
                      false,
                      context),
                  _buildCard(
                      'Loperamide',
                      '\₹265.00',
                      'Medication used to decrease the frequency of diarrhea.',
                      'assets/lopa.png',
                      true,
                      context),
                  _buildCard(
                      'Moov ointment',
                      '\₹155.26',
                      'Pain relief cream is an analgesic (or pain-relieving) ointment made using 100% ayurvedic ingredients helps in relaxing muscle stiffness and relieving pain effectively.',
                      'assets/Moov.png',
                      false,
                      context),
                  _buildCard(
                      'Paracetamol',
                      '\₹195.15',
                      'Medication used to treat fever and mild to moderate pain.',
                      'assets/Parace.png',
                      true,
                      context),
                  _buildCard(
                      'Thyronorm',
                      '\₹250.06',
                      'Used for the diagnosis or treatment of Hypothyroidism, Ccongenital Hypothyroidism, Goiter, Thyroid cancer',
                      'assets/thyro.png',
                      false,
                      context)
                ],
              )),
          SizedBox(height: 15.0),
        ],
      ),
    );
  }

  Widget _buildCard(String name, String price, String descrp, String imgPath,
      bool isFavorite, context) {
    return Padding(
      padding: EdgeInsets.only(top: 15.0, bottom: 15.0, left: 7.0, right: 7.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DetailsScreen(
                  assetPath: imgPath,
                  nname: name,
                  pprice: price,
                  ddes: descrp)));
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3.0,
                    blurRadius: 5.0)
              ],
              color: Colors.white),
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      isFavorite
                          ? Icon(Icons.favorite, color: Colors.red)
                          : Icon(Icons.favorite_border, color: Colors.red)
                    ],
                  )),
              Hero(
                tag: imgPath,
                child: Container(
                    height: 85.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imgPath), fit: BoxFit.contain))),
              ),
              SizedBox(height: 2.0),
              Text(name,
                  style: TextStyle(
                      color: Colors.black87,
                      fontFamily: 'Varela',
                      fontSize: 25.0)),
              Text(price,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Varela',
                      fontSize: 16.0)),
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(color: Color(0xFFEBEBEB), height: 0.55)),
              Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton.icon(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.purple.shade200,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24.0))),
                          onPressed: () {},
                          icon: const Icon(null),
                          label: Text('Buy Now   ',
                              style: TextStyle(
                                  fontFamily: 'Varela',
                                  color: Colors.black,
                                  fontSize: 20.0))),
                      TextButton.icon(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.purple.shade200,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24.0))),
                          onPressed: () {},
                          icon: const Icon(null),
                          label: Text('Add to cart   ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Varela',
                                  color: Colors.black,
                                  fontSize: 20.0))),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
