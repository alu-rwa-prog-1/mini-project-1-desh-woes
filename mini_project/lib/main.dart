import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyApp createState() => _MyApp();
}

class _MyApp extends State {
  var _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mini Project",
      theme: ThemeData(primaryColor: Colors.amber),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Food order"),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                onPressed: () {
                  // Not implemented
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.alarm,
                  color: Colors.black,
                ),
                onPressed: () {
                  // Not implemented
                },
              )
            ],
          ),
          drawer: Drawer(
              child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text("Header"),
                decoration: BoxDecoration(color: Colors.black26),
              ),
              ListTile(
                title: Text("Placeholder 1"),
                onTap: () {
                  // Not implemented
                },
              ),
              Divider(
                thickness: 1.5,
              ),
              ListTile(
                title: Text("Placeholder 2"),
                onTap: () {
                  // Not implemented
                },
              ),
              Divider(
                thickness: 1.5,
              ),
              ListTile(
                title: Text("Placeholder 3"),
                onTap: () {
                  // Not implemented
                },
              )
            ],
          )),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart), label: "My Cart"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: "Favourite"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Settings"),
            ],
            selectedItemColor: Colors.amber,
            unselectedItemColor: Colors.black54,
            showUnselectedLabels: true,
            currentIndex: _currentPage,
            onTap: (int inIndex) {
              setState(() {
                _currentPage = inIndex;
              });
            },
          ),
          body: new ListView(
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    "All Categories",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
              Container(
                height: 150.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Categories(
                      imageLocation: "images/drink.png",
                      imageCaption: "Take Away",
                    ),
                    Categories(
                      imageLocation: "images/fast-food.png",
                      imageCaption: "On Plate",
                    ),
                    Categories(
                      imageLocation: "images/healthy-food.png",
                      imageCaption: "Drinks",
                    ),
                    Categories(
                      imageLocation: "images/vegan.png",
                      imageCaption: "Vegan",
                    ),
                    Categories(
                      imageLocation: "images/drink.png",
                      imageCaption: "Take Away",
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    "Today's Special",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
              Container(
                height: 225,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(padding: const EdgeInsets.all(10)),
                    OrderCards(
                      backgroundColor: Colors.black,
                      imageLocation: "images/food-photo.jpg",
                      imageName: "Hamburger",
                      imagePrice: "400",
                    ),
                    Padding(padding: const EdgeInsets.all(10)),
                    OrderCards(
                      backgroundColor: Colors.lightBlue,
                      imageLocation: "images/food.jpg",
                      imageName: "Hamburger",
                      imagePrice: "400",
                    ),
                    Padding(padding: const EdgeInsets.all(10)),
                    OrderCards(
                      backgroundColor: Colors.black,
                      imageLocation: "images/sausage.jpg",
                      imageName: "Hamburger",
                      imagePrice: "400",
                    ),
                    Padding(padding: const EdgeInsets.all(10)),
                    OrderCards(
                      backgroundColor: Colors.black,
                      imageLocation: "images/food-photo.jpg",
                      imageName: "Hamburger",
                      imagePrice: "400",
                    ),
                    Padding(padding: const EdgeInsets.all(10)),
                    OrderCards(
                      backgroundColor: Colors.black,
                      imageLocation: "images/food-photo.jpg",
                      imageName: "Hamburger",
                      imagePrice: "400",
                    )
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    "Drinks",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
              Container(
                height: 225,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(padding: const EdgeInsets.all(10)),
                    OrderCards(
                      backgroundColor: Colors.red,
                      imageLocation: "images/coke.jpg",
                      imageName: "Coke",
                      imagePrice: "400",
                    ),
                    Padding(padding: const EdgeInsets.all(10)),
                    OrderCards(
                      backgroundColor: Colors.orangeAccent,
                      imageLocation: "images/drink1.jpg",
                      imageName: "Drink 1",
                      imagePrice: "400",
                    ),
                    Padding(padding: const EdgeInsets.all(10)),
                    OrderCards(
                      backgroundColor: Colors.pink,
                      imageLocation: "images/drink2.jpg",
                      imageName: "Drink 2",
                      imagePrice: "400",
                    ),
                    Padding(padding: const EdgeInsets.all(10)),
                    OrderCards(
                      backgroundColor: Colors.black,
                      imageLocation: "images/food-photo.jpg",
                      imageName: "Hamburger",
                      imagePrice: "400",
                    ),
                    Padding(padding: const EdgeInsets.all(10)),
                    OrderCards(
                      backgroundColor: Colors.black,
                      imageLocation: "images/food-photo.jpg",
                      imageName: "Hamburger",
                      imagePrice: "400",
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

class OrderCards extends StatelessWidget {
  final Color backgroundColor;
  final String imageLocation;
  final String imageName;
  final String imagePrice;

  OrderCards(
      {this.backgroundColor,
      this.imageLocation,
      this.imageName,
      this.imagePrice});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          height: 180,
          width: 180,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Image.asset(imageLocation),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Text(
            imageName,
            style: TextStyle(color: Colors.black),
          ),
        ),
        Text(
          "\$$imagePrice",
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class Categories extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  Categories({this.imageCaption, this.imageLocation});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: InkWell(
        onTap: () {
          // Not implemented
        },
        child: Container(
          width: 120.0,
          child: ListTile(
              dense: true,
              title: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Image.asset(
                  imageLocation,
                  width: 120.0,
                  height: 100.0,
                ),
              ),
              subtitle: Container(
                padding: const EdgeInsets.all(5),
                alignment: Alignment.topCenter,
                child: Text(imageCaption),
              )),
        ),
      ),
    );
  }
}
