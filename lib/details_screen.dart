import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:details_screen/bottom_bar.dart';
import 'package:details_screen/product_page.dart';

class DetailsScreen extends StatelessWidget {
  final assetPath, nname, pprice, ddes;

  DetailsScreen({this.assetPath, this.nname, this.pprice, this.ddes});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.purple.shade300),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Pickup',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.purple.shade300),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 15.0),
          Hero(
              tag: assetPath,
              child: Image.asset(assetPath,
                  height: 200.0, width: 150.0, fit: BoxFit.contain)),
          SizedBox(height: 20.0),
          Center(
            child: Text(nname,
                style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'Varela',
                    fontSize: 24.0)),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50.0,
              child: Text(
                ddes,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 18.0,
                    color: Colors.black54),
              ),
            ),
          ),
          SizedBox(height: 15.0),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: GestureDetector(
                  onTap: () {},
                  child: Row(children: [
                    Text('See More Details..',
                        style: TextStyle(
                            fontFamily: 'Varela',
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple.shade100)),
                    IconButton(
                      icon: const Icon(Icons.arrow_forward_ios),
                      iconSize: 13.0,
                      onPressed: () {},
                    ),
                    Spacer(),
                    IconButton(
                      icon: const Icon(Icons.add_circle_outline),
                      iconSize: 25.0,
                      color: Colors.purple.shade300,
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.remove_circle_outline),
                      iconSize: 25.0,
                      color: Colors.purple.shade300,
                      onPressed: () {},
                    ),
                  ]))),
          SizedBox(height: 20.0),
          Center(
            child: Text(pprice,
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87)),
          ),
          SizedBox(height: 35.0),
          TextButton.icon(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.purple.shade300,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0))),
              onPressed: () {},
              icon: const Icon(null),
              label: Text('Add to Cart',
                  style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black))),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.purple.shade300,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
