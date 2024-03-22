import 'package:flutter/material.dart';
import 'package:testproject/settingpage.dart';

import 'Categoriepage.dart';
import 'LoginPage.dart';
import 'accountpage.dart';
import 'main.dart';
class singup extends StatefulWidget {
  const singup({super.key});

  @override
  State<singup> createState() => _singupState();
}

class _singupState extends State<singup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.green,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Icon(Icons.menu, color: Colors.white),
            ],
          ),
        ),
        title: Text(
          'SingUp',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.shopping_cart),
            Icon(Icons.add_alert),
            Icon(Icons.add_circle_outline),
            Icon(Icons.add_business_sharp),
          ],
        ),
      ),
      drawer:  Drawer(
        child: new ListView(
          children: [
            // header
            new UserAccountsDrawerHeader(
              accountName: Text('Pascaline Leonie Mabrey'),
              accountEmail: Text('passymabrey@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundImage: AssetImage('images/avatar/a.jpg'),
                  backgroundColor: Colors.grey,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
            // body
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));

              },
              child: ListTile(
                title: Text('Home page'),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => login(),));

              },
              child: ListTile(
                title: Text('Login page'),
                leading: Icon(Icons.logout),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => account(),));
              },
              child: ListTile(
                title: Text('My account'),
                leading: Icon(Icons.person),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => categorie(),));

              },
              child: ListTile(
                title: Text('Categoris'),
                leading: Icon(Icons.dashboard),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favorites'),
                leading: Icon(Icons.favorite),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => setting(),));
              },
              child: ListTile(
                title: Text('Setting'),
                leading: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(
                  Icons.help,
                  color: Colors.green,
                ),
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person), hintText: 'Nom'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle), hintText: 'PreNom'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email), hintText: 'Email'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.remove_red_eye), hintText: 'Password'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password), hintText: 'ConfirmPassword'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: 200,
                height: 50,
                child: ElevatedButton(onPressed: (){}, child: Text('singup',style: TextStyle(fontWeight: FontWeight.bold),))),
          ),
          Text('Vous avez deja un compte?'),
          GestureDetector(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => login(),));
          },
              child: Text('Login',style: TextStyle(color: Colors.deepPurple),)),

        ],
      ),
    );
  }
}
