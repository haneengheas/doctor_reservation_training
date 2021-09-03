import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemDetailsScreen extends StatefulWidget {
  int index;
  ItemDetailsScreen({required this.index});

  @override
  _ItemDetailsScreenState createState() => _ItemDetailsScreenState();
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
  List<Map<String, dynamic>> _notification = [
    {'data': 'Notification data', 'is_open': false},
    {'data': 'Notification data', 'is_open': false},
    {'data': 'Notification data', 'is_open': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Stack(
            children: [
              Icon(
                Icons.notifications_none_outlined,
                size: 40,
              ),
              Positioned(
                top: 0,
                left: 10,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.yellow),
                  child: Center(
                    child: Text(
                      '1',
                      style: TextStyle(color: Colors.redAccent),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
        centerTitle: true,
        title: Text('item${widget.index}'),
      ),
      body: ListView.builder(
          itemCount: _notification.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                setState(() {
                  _notification[index]['is_open'] = true;
                });
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 90,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(vertical: 5),
                color: _notification[index]['is_open']
                    ? Colors.white
                    : Colors.grey,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.black,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(_notification[index]['data'])
                  ],
                ),
              ),
            );
          }),
    );
  }
}
