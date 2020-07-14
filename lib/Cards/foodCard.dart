import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget foodCard(String name, String image, String description, String price) {
  return Container(
    margin: EdgeInsets.all(10),
    height: 200,
    width: 160,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Colors.transparent,
    ),
    child: Column(
      children: [
        Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 60),
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.withOpacity(.5),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.topCenter,
                  child: Image(
                    height: 120,
                    width: 140,
                    image: AssetImage(
                      "assets/images/$image",
                    ),
                    colorBlendMode: BlendMode.saturation,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    name,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    description,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "\$$price",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          letterSpacing: .9,
                        ),
                      ),
                      Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                        size: 15,
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
