import 'package:flutter/material.dart';

class Card3 extends StatelessWidget {
 
  const Card3({
   
    super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 5.0,
              blurRadius: 10,
              offset: const Offset(3, 10),
            )
          ]
        ),
        child: GestureDetector(
          onTap: () {
            print("Tile");
          },
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/BaiViet.png'), fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5.0),
                        topRight: Radius.circular(5.0),
                      )
                    ),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:EdgeInsets.only(left: 8.0, right: 8.0, top: 5.0),
                  child: Text(
                    "Hành trình mới!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Thoải mái khám phá các địa điểm mới.",
                  textAlign: TextAlign.left,
                ),
              ),
              
            ],
          ),
        ),
      )
    );
  }
}
