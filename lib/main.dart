import 'package:flutter/material.dart';
import 'package:testproject/homepage.dart';
import 'package:testproject/pageDetail.dart';
import 'package:testproject/settingpage.dart';

import 'Categoriepage.dart';
import 'LoginPage.dart';
import 'accountpage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

List data = [
  {
    'nom': 'salopette',
    'image': 'images/avatar/c.png',
    'detail': 'jkhgfdxcvbhnjmk',
    'prix': '4500XAF',
    'icon': Icons.favorite_border,
  },
  {
    'nom': 'habits enfant',
    'image': 'images/avatar/d.png',
    'prix': '200XAF',
    'icon': Icons.favorite_border,
  },
  {
    'nom': 't-shirt',
    'image': 'images/avatar/q.png',
    'prix': '1500XAF',
    'icon': Icons.favorite_border,
  },
  {
    'nom': 'pull',
    'image': 'images/avatar/images.png',
    'prix': '8500XAF',
    'icon': Icons.favorite_border,
  },
  {
    'nom': 'ensemble jeans',
    'image': 'images/avatar/j.png',
    'prix': '900XAF',
    'icon': Icons.favorite_border,
  },
  {
    'nom': 'ensemble pantalon',
    'image': 'images/avatar/k.png',
    'prix': '1000XAF',
    'icon': Icons.favorite_border,
  },{
    'nom': 'tricot',
    'image': 'images/avatar/l.png',
    'prix': '1400XAF',
    'icon': Icons.favorite_border,
  },{
    'nom': 'polo',
    'image': 'images/avatar/m.png',
    'prix': '1800XAF',
    'icon': Icons.favorite_border,
  },{
    'nom': 'ensemble culotte',
    'image': 'images/avatar/n.png',
    'prix': '7000XAF',
    'icon': Icons.favorite_border,
  },
  {
    'nom': 'habits enfant',
    'image': 'images/avatar/o.png',
    'prix': '6000XAF',
    'icon': Icons.favorite_border,
  },
];


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:  AppBar(
        elevation: 0.1,
        backgroundColor: Colors.green,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Icon(Icons.menu,color: Colors.white),
            ],
          ),
        ),
        title: Text(
          'shopApp',
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
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
       children:
       data.map((e) => GestureDetector(onTap: () {
         Navigator.push(context, MaterialPageRoute(builder: (context) => pagedetail(e:e),));
       },
           child: homepage(imageDeArticle: e['image'], titreDeArticle: e['nom'], prixDeArticle: e['prix']))).toList()
      ),
    );
  }
}
