import 'package:flutter/material.dart';
import 'package:testproject/settingpage.dart';

import 'Categoriepage.dart';
import 'LoginPage.dart';
import 'accountpage.dart';
import 'main.dart';
class plusdinformation extends StatefulWidget {
  const plusdinformation({super.key});

  @override
  State<plusdinformation> createState() => _plusdinformationState();
}

class _plusdinformationState extends State<plusdinformation> {
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
          'A propos',
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
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Emploi',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.add_card_rounded),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Ajouter une experience professionnelle',style: TextStyle(fontSize: 15)),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.accessibility_outlined),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Auparavant chef a son propre compte',style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            Text('le 22 avril 2024',style: TextStyle(fontSize: 10)),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Scolarite',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.school),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Ajouter un etablissement',style: TextStyle(fontSize: 15)),
                ),
        
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.school),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Auparavant Etudiante a KTC-CENTER',style: TextStyle(fontSize: 15)),
                ),
              ],
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Lieux de Residence',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.location_on),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Ajouter un Lieux de Residence',style: TextStyle(fontSize: 15)),
                ),
        
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.location_on),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Yaounde',style: TextStyle(fontSize: 15)),
                ),
              ],
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Coordonnees',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.add_call),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('697185728',style: TextStyle(fontSize: 15)),
                ),
        
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.add_call),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('699083416',style: TextStyle(fontSize: 15)),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.email),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('passymabrey@gmail.com',style: TextStyle(fontSize: 15)),
                ),
              ],
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('info General',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.person),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Genre',style: TextStyle(fontSize: 15)),
                ),

              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.cake_outlined),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('22 avril 2000',style: TextStyle(fontSize: 15)),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.email),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('passymabrey@gmail.com',style: TextStyle(fontSize: 15)),
                ),
              ],
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Situation Amoureuse',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.heart_broken),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Celibataire',style: TextStyle(fontSize: 15)),
                ),

              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.email),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('passymabrey@gmail.com',style: TextStyle(fontSize: 15)),
                ),
              ],
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
