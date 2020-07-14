import 'package:flutter/material.dart';
import 'package:foodapp/Cards/foodCard.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: Icon(Icons.home, color: Colors.white),
        label: Text(
          "Home",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.greenAccent.withOpacity(.7),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        leading: Container(
          padding: EdgeInsets.all(15),
          child: InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: () {},
            child: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 20, bottom: 5),
              child: Text(
                "FoodApp",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 20,
                bottom: 20,
              ),
              child: Text(
                "Eat, Love & Smile",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Container(
              child: Center(
                child: Wrap(
                  children: <Widget>[
                    foodCard("Chicken Burger", "burger.png",
                        "Spicy with Garlic", "15"),
                    foodCard(
                        "Beef Burger", "beefBurger.png", "Sweet & Spicy", "17"),
                    foodCard("Crispy Drumsticks", "drumstick.png", "BBQ & Hot",
                        "12"),
                    foodCard("French Fries", "frenchFries.png", "Sweet & Sour",
                        "10"),
                    foodCard("Egg Muffins", "eggMuffin.png",
                        "Excellent source of protein", "11"),
                    foodCard("Bacon & Egg", "baconEgg.png", "Sandwich", "6"),
                    foodCard("Chicken Burger", "burger.png",
                        "Spicy with Garlic", "15"),
                    foodCard("Beef Burger", "beefBurger.png",
                        "Spicy with Garlic", "15"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
