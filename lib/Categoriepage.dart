import 'package:flutter/material.dart';
import 'package:testproject/settingpage.dart';

import 'LoginPage.dart';
import 'accountpage.dart';
import 'main.dart';

class categorie extends StatefulWidget {
  const categorie({super.key});

  @override
  State<categorie> createState() => _categorieState();
}

class _categorieState extends State<categorie> {
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
          'vetement enfant',
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
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Image(image: AssetImage('images/avatar/c.png')),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Image(image: AssetImage('images/avatar/d.png')),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Image(image: AssetImage('images/avatar/m.png')),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Image(image: AssetImage('images/avatar/k.png')),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image(image: AssetImage('images/avatar/h.png')),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image(image: AssetImage('images/avatar/j.png')),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Image(image: AssetImage('images/avatar/c.png')),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Image(image: AssetImage('images/avatar/k.png')),
          ),


        ],

      ),
    );
  }
}
