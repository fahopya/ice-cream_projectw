import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleItemScreen extends StatelessWidget {
  String img;
  SingleItemScreen(this.img);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 30, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: const Color.fromARGB(255, 27, 27, 27).withOpacity(0.5),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Image.asset(
                    "assets/$img.png",
                    width: MediaQuery.of(context).size.width / 1.2,
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "BEST ICE-CREAM",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 27, 27, 27).withOpacity(0.4),
                            letterSpacing: 3),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        img,
                        style: const TextStyle(
                          fontSize: 25,
                          letterSpacing: 1,
                          color: Color.fromARGB(255, 27, 27, 27),
                        ),
                      ),
                      SizedBox(height: 25),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(15),
                              width: 120,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color.fromARGB(255, 27, 27, 27).withOpacity(0.2),
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    CupertinoIcons.minus,
                                    size: 18,
                                    color: const Color.fromARGB(255, 27, 27, 27),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "2",
                                    style: TextStyle(
                                        color: const Color.fromARGB(255, 27, 27, 27),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(width: 10),
                                  Icon(
                                    CupertinoIcons.minus,
                                    size: 18,
                                    color: Color.fromARGB(255, 27, 27, 27),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "\$5.99",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromARGB(255, 27, 27, 27)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Afters Ice Cream was Created by its founders to revolutionize the ice cream market. Afters has made its mark in pop culture history as the pioneer in the emerging food trend scene, drawing unprecedented crowds searching for its unique, premium product and experience.",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 27, 27, 27),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Row(
                        children: [
                          Text(
                            "Quantity:",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color.fromARGB(255, 27, 27, 27),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "1 Scoop",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color.fromARGB(255, 27, 27, 27),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 60),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 30),
                              decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: const Text(
                                "Add to Cart",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Icon(Icons.favorite_outline,
                              color: Colors.white,                               
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
