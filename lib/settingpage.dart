import 'package:flutter/material.dart';

import 'Categoriepage.dart';
import 'LoginPage.dart';
import 'accountpage.dart';
import 'main.dart';
class setting extends StatefulWidget {
  const setting({super.key});

  @override
  State<setting> createState() => _settingState();
}

class _settingState extends State<setting> {
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
          'settings',
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
            padding: const EdgeInsets.all(8.0),
            child: Text('settings',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
          ),
          Row(
            children: [
              CircleAvatar(
                maxRadius: 50,
                backgroundImage: AssetImage('images/avatar/a.jpg'),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('Mabrey Leonie Pascaline'),
                  ),
                  Text('+237 697185728'),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                 Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(30.0),
                       child: Icon(Icons.dark_mode),
                     ),
                     Text('white mode',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                     Padding(
                       padding: const EdgeInsets.all(50.0),
                       child: Icon(Icons.published_with_changes_outlined),
                     ),
                   ],
                 ),
                   Text('General',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                  Row(
                    children: [
                    Icon(Icons.person),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text('Account Setting'),
                          ),
                          Text('privaty, security, language'),
                        ],
                      ),
                     Padding(
                       padding: const EdgeInsets.all(20.0),
                       child: Icon(Icons.play_arrow_outlined),
                     )

                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.notification_add),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text('Notifications'),
                          ),
                          Text('NewsLatter, App Update'),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Icon(Icons.play_arrow_outlined),
                      )

                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Icon(Icons.logout),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(35.0),
                            child: Text('Logout'),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Icon(Icons.play_arrow_outlined),
                      )

                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.delete),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text('Delete Account'),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Icon(Icons.play_arrow_outlined),
                      )

                    ],
                  ),

                ],
              ),
            ],
          ),

        ],
      ),
    );
  }
}
