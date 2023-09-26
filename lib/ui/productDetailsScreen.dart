import 'package:flutter/material.dart';
import 'package:flutter_ecom_2023/ui/cartScreen.dart';
import 'package:flutter_ecom_2023/ui/loginScreen.dart';
import 'package:flutter_ecom_2023/ui/profileScreen.dart';

class Productdetails extends StatefulWidget {
  final List<Object?> value;
  const Productdetails(List<Object?> list, {required this.value, Key? key})
      : super(key: key);

  @override
  State<Productdetails> createState() => _ProductdetailsState();
}

class _ProductdetailsState extends State<Productdetails> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            backgroundColor: const Color.fromARGB(255, 210, 245, 94),

        appBar: AppBar(
          title:const  Text("Home"),
          centerTitle: true,
        ),
        body: const Center(
          child: Text("abhijit"),
        ),
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
