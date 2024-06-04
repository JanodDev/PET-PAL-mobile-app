import 'package:flutter/material.dart';
import 'package:pet_pal/screen/constants.dart';
import 'package:pet_pal/screen/traningbody.dart';

class pettraning extends StatelessWidget {
  const pettraning({
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
          'Pet Traning',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
        ],
      ),
      body: traningBody(),
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
              color: kPrimaryColor,
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
      onTap: press as void Function()?,
      child: ListTile(
        title: Text(title),
        leading: Icon(
          icon,
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
