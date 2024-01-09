import 'package:fasion/Screens/Addingimage.dart';
import 'package:fasion/Screens/Logout.dart';
import 'package:fasion/Screens/productdetails.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Products",
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),
          leading: IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const Logout()));
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.add_box),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => const Add()));
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          Positioned(
                            child: Container(
                              child: Image.asset("assets/photolist3.jpeg"),
                            ),
                          ),
                          const Positioned(
                            bottom: 0,
                            right: 0,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(Icons.favorite_outline),
                            ),
                          ),
                          Positioned(
                            child:ElevatedButton(onPressed: (){
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const Productview()));


 }, child:const Icon(Icons.arrow_forward)
 ),
                          ),
                        ],
                      ),
                      const Text("Tops",
                          style: TextStyle(
                              color: Color.fromARGB(255, 96, 95, 95))),
                      const Text("WESTERN TOP"),
                      const Text(
                        "\$19",
                        style: TextStyle(
                            color: Color.fromARGB(255, 245, 5, 5)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Stack(
                        children: [
                          Positioned(
                            child: Container(
                              child: Image.asset(
                                "assets/photolist4.jpeg",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const Positioned(
                            bottom: 0,
                            right: 0,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(Icons.favorite_outline),
                            ),
                          ),
                          Positioned(
                            child:ElevatedButton(onPressed: (){
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const Productview()));


 }, child:const Icon(Icons.arrow_forward)
 )
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Text(
                              '20%',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Text("Tops",
                          style: TextStyle(
                              color: Color.fromARGB(255, 88, 86, 86))),
                      const Text("WESTERN TOP"),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("\$13 ",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 115, 114, 114))),
                          Text(
                            "\$10",
                            style: TextStyle(
                                color: Color.fromARGB(255, 245, 5, 5)),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          Positioned(
                            child: Container(
                              child: Image.asset("assets/image6.jpeg"),
                            ),
                          ),
                          const Positioned(
                            bottom: 0,
                            right: 0,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(Icons.favorite_border_outlined),
                            ),
                          ),
                          Positioned(
                            child:ElevatedButton(onPressed: (){
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const Productview()));


 }, child:const Icon(Icons.arrow_forward)
 )
                          ),
                        ],
                      ),
                      const Text("Tops",
                          style: TextStyle(
                              color: Color.fromARGB(255, 119, 118, 118))),
                      const Text("WESTERN TOP"),
                      const Text(
                        "\$18",
                        style: TextStyle(
                            color: Color.fromARGB(255, 245, 5, 5)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Stack(
                        children: [
                          Positioned(
                            child: Container(
                              child: Image.asset(
                                "assets/image7.jpeg",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const Positioned(
                            bottom: 0,
                            right: 0,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(Icons.favorite_border),
                            ),
                          ),
                          Positioned(
                            child:ElevatedButton(onPressed: (){
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const Productview()));


 }, child:const Icon(Icons.arrow_forward)
 )
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Text(
                              '20%',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Text("Tops",
                          style: TextStyle(
                              color: Color.fromARGB(255, 161, 160, 160))),
                      const Text("WESTERN TOP"),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("\$15 ",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 115, 114, 114))),
                          Text(
                            "\$11",
                            style: TextStyle(
                                color: Color.fromARGB(255, 245, 5, 5)),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}

void arrow(context) {

 ElevatedButton(onPressed: (){
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const Productview()));


 }, child:const Icon(Icons.arrow_forward)
 );
}
