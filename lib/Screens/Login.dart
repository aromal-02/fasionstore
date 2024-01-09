import 'package:fasion/Screens/Product.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

TextEditingController username = TextEditingController();
TextEditingController password = TextEditingController();

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            "assets/cover3.jpg",
            fit: BoxFit.cover,
          ),
        ),
        const Positioned(
          top: 400,
          left: 30,
          child: Text(
            "Login",
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
        ),
        Positioned(
          top: 450,
          left: 16,
          right: 16,
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 253, 251, 251),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 16),
                TextField(
                  controller: username,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    labelText: 'Username',
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: password,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                const SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {}, child: const Text("Forgott password?")),
                ),
                ElevatedButton(
                  onPressed: () {
                    permission(context);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 4, 55, 97),
                      foregroundColor: Colors.white,
                      elevation: 8),
                  child: const Text('Login'),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 80,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    child: Image.asset(
                      'assets/google.jpeg',
                      width: 60,
                      height: 60,
                    ),
                  ),
                  CircleAvatar(
                    child: Image.asset(
                      'assets/facebook.png',
                      width: 60,
                      height: 60,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Create a new account?",
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(onPressed: () {}, child: const Text("signup"))
                ],
              )
            ],
          ),
        ),
      ],
    ));
  }
}

void permission(context) {
  String user = username.text;
  String pass = password.text;
  if (user != null && pass != null && user != '' && pass != '') {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const ProductList()));
  } else {
    print("enter valide username and password");
  }
}
