import 'package:flutter/material.dart';
import 'package:pet_pal/screen/authenticaton/body.dart';

class petstore extends StatelessWidget {
  const petstore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Pet Store',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
        ],
      ),
      body: Body(),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('user123'),
              accountEmail: Text('user123@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/man.png',
                ),
              ),
            ),
            MenuList(
              press: () {},
              title: 'Home',
              icon: Icons.home,
            ),
            MenuList(
              press: () {},
              title: 'Category',
              icon: Icons.dashboard,
            ),
            MenuList(
              press: () {},
              title: 'Carts',
              icon: Icons.shopping_cart_checkout,
            ),
            Divider(
              color: Color.fromARGB(255, 243, 247, 242),
            ),
            MenuList(
              press: () {},
              title: 'Settings',
              icon: Icons.settings,
            ),
            MenuList(
              press: () {},
              title: 'FAQ',
              icon: Icons.help,
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 219, 145, 253),
      ),
    );
  }
}

class MenuList extends StatelessWidget {
  const MenuList({
    super.key,
    required this.title,
    required this.press,
    required this.icon,
  });
  final String title;
  final Function press;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press(),
      child: ListTile(
        title: Text(title),
        leading: Icon(
          icon,
          color: const Color.fromARGB(255, 61, 5, 71),
        ),
      ),
    );
  }
}
