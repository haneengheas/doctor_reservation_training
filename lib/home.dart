import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:offline_session/item_details.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text('Home Screen'),
        ),
        body: GridView.builder(
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, childAspectRatio: 2 / 3),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ItemDetailsScreen(index: index,)));
                },
                child: Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.redAccent,
                  child: Center(
                    child: Text(
                      'Item $index',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              );
            }));
  }
}
