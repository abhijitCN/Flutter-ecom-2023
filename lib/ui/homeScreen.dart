import 'package:flutter/material.dart';
import 'package:flutter_ecom_2023/ui/cartScreen.dart';
import 'package:flutter_ecom_2023/ui/loginScreen.dart';
import 'package:flutter_ecom_2023/ui/productDetailsScreen.dart';
import 'package:flutter_ecom_2023/ui/profileScreen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final products = [
    {
      "img":
          "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "title": "product 1",
      "price": 100,
      "category": "category 1",
      "rating": 4
    },
    {
      "img":
          "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "title": "product 1",
      "price": 100,
      "category": "category 1",
      "rating": 4
    },
    {
      "img":
          "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "title": "product 1",
      "price": 100,
      "category": "category 1",
      "rating": 4
    },
    {
      "img":
          "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "title": "product 1",
      "price": 100,
      "category": "category 1",
      "rating": 4
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 210, 245, 94),
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Productdetails(
                            const [],
                            value: [
                              products[index]["img"],
                              products[index]["title"],
                              products[index]["price"],
                              products[index]["category"],
                              products[index]["rating"]
                            ],
                          )),
                );
              },
              child: Card(
                elevation: 4.0,
                margin: const EdgeInsets.all(16.0),
                child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                  Image.network("${products[index]["img"]}", fit: BoxFit.cover,height: 200,),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text("${products[index]["title"]}"),
                        const SizedBox(height: 2.0),
                        Text("${products[index]["price"]}"),
                        const SizedBox(height: 2.0),
                        Text("${products[index]["category"]}"),
                        const SizedBox(height: 2.0),
                        Text("${products[index]["rating"]}"),
                        const SizedBox(height: 2.0),
                        ElevatedButton(
                            onPressed: () {}, child: const Text("Add to Cart"))
                      ],
                    ),
                  ),
                ]),
              ),
            );
          },
          itemCount: products.length),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.production_quantity_limits_outlined),
              label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),
        ],
        onTap: (int index) {
          if (index == 0) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const loginScreen()));
          }
          if (index == 1) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const Cart()));
          }
          if (index == 2) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Profile()));
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: const EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  accountName: const Text("accountName"),
                  accountEmail: const Text("accountEmail"),
                  currentAccountPicture: Image.network(
                      "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                )),
            ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Home"),
                onTap: () {}),
            ListTile(
                leading: const Icon(Icons.settings),
                title: const Text("Cart"),
                onTap: () {}),
            ListTile(
                leading: const Icon(Icons.category),
                title: const Text("Profile"),
                onTap: () {})
          ],
        ),
      ),
    );
  }
}
