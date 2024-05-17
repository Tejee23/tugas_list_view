import 'package:flutter/material.dart';
import 'package:list_view/item.dart';


class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Item> items = [
    Item(
        name: 'gula',
        description:
            "gula",
        prices: 5000,
        image: 'assets/gula.jpg',
        stock: 10),
    Item(
        name: 'garam',
        description:
            "Garam",
        prices: 2000,
        image: 'assets/garam.jpg',
        stock: 10),
    Item(
        name: 'Minyak',
        description: "Minyak",
        prices: 3000,
        image: 'assets/minyak.jpg',
        stock: 20),
    Item(
        name: 'kecap',
        description: "kecap",
        prices: 5000,
        image: 'assets/kecap.jpg',
        stock: 15),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping cart"),
        backgroundColor: Color.fromARGB(255, 255, 0, 0),
        foregroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.home),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(item.image),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(child: Text(item.name)),
                      Expanded(
                        child: Text(
                          item.prices.toString(),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}