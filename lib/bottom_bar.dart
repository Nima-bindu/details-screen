import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        color: Colors.transparent,
        elevation: 9.0,
        clipBehavior: Clip.antiAlias,
        child: Container(
            height: 50.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0)),
                color: Colors.white),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50.0,
                    width: MediaQuery.of(context).size.width / 2 - 40.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        IconButton(
                          icon: const Icon(Icons.home_filled),
                          color: Colors.purple.shade200,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.person_outline),
                          color: Colors.purple.shade200,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50.0,
                    width: MediaQuery.of(context).size.width / 2 - 40.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.search),
                          color: Colors.purple.shade300,
                        ),
                        IconButton(
                          icon: Icon(Icons.shopping_basket_outlined),
                          color: Colors.purple.shade200,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ])));
  }
}
