import 'package:flutter/material.dart';
import 'package:testproject/plusdinformation.dart';
import 'package:testproject/settingpage.dart';

import 'Categoriepage.dart';
import 'LoginPage.dart';
import 'main.dart';
class account extends StatefulWidget {
  const account({super.key});

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
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
          'Account',
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
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Profile',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 30)),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                maxRadius: 60,
                backgroundImage: AssetImage('images/avatar/a.jpg'),
              ),
            ),
            Text('Pascaline Leonie Mabrey',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10)),
            Text('Passymabrey@gmail.com',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15)),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.accessibility_outlined),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('A etudie a KTC-CENTER'),
                                ),
                              ],
                            ),

                          ],

                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.location_on_outlined),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Habite A Yaounde'),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.location_on),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('De Yaounde'),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.heart_broken_outlined),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Celibataire'),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => plusdinformation(),));
                  },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.more_horiz),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Plus dinformation'),
                                  ),
                                ],
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        )
      ),
    );
  }
}
