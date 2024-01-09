import 'package:flutter/material.dart';

class Productview extends StatefulWidget {
  const Productview({super.key});

  @override
  State<Productview> createState() => _ProductviewState();
}

class _ProductviewState extends State<Productview> {
  String selectedValue = 'Size';
  String selectedvalue2 = "BLACK";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "ProductView",
            style: TextStyle(fontSize: 30),
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 400,
              width: 500,
              color: const Color.fromARGB(255, 46, 105, 152),
              child: Image.asset(
                "assets/photolist3.jpeg",
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "WESTERN TOP",
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  "RS 800",
                  style: TextStyle(fontSize: 40, color: Colors.red),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "A Western shirt is a traditional item of Western wear characterized by a stylized yoke on the front and on the back. It is generally constructed of chambray, denim or tartan fabric with long sleeves, and in modern form is sometimes seen with snap pockets, patches made from bandana fabric, and fringe.",
                style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 116, 114, 114)),
              ),
            )
          ],
        ));
  }
}
