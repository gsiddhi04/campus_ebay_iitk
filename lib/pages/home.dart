import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> items = [
    {
      'title': 'Cooler',
      'description': 'Almost new, used for 2 months',
      'price': '₹2000',
      'image': 'images/cooler.jpg'
    },
    {
      'title': 'Mattress',
      'description': 'Comfortable and clean',
      'price': '₹1500',
      'image': 'images/mattress.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue.shade200, Colors.blue.shade500],
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Search',
                        suffixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  PopupMenuButton<String>(
                    onSelected: (String result) {
                      switch (result) {
                        case 'profile':
                          Navigator.pushNamed(context, '/profile');
                          break;
                        case 'order_history':
                          // Add navigation to order history page here
                          break;
                        case 'logout':
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            '/login',
                            (Route<dynamic> route) => false,
                          );
                          break;
                      }
                    },
                    itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                      const PopupMenuItem<String>(
                        value: 'profile',
                        child: Text('Profile Page'),
                      ),
                      const PopupMenuItem<String>(
                        value: 'order_history',
                        child: Text('Order History'),
                      ),
                      const PopupMenuItem<String>(
                        value: 'logout',
                        child: Text('Log Out'),
                      ),
                    ],
                    icon: Icon(Icons.more_vert),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.7,
                  ),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/product', arguments: items[index]);
                      },
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                                  image: DecorationImage(
                                    image: AssetImage(items[index]['image']!),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    items[index]['title']!,
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    items[index]['description']!,
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    items[index]['price']!,
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
