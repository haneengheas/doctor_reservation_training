import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DoctorsScreen extends StatefulWidget {
  const DoctorsScreen({Key? key}) : super(key: key);

  @override
  _DoctorsScreenState createState() => _DoctorsScreenState();
}

class _DoctorsScreenState extends State<DoctorsScreen> {
  List<Map<String, dynamic>> _cats = [
    {'name': 'Cat1', 'is_selected': true},
    {'name': 'Cat2', 'is_selected': false},
    {'name': 'Cat3', 'is_selected': false},
    {'name': 'Cat4', 'is_selected': false},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.blueAccent,
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Stack(
                      children: [
                        Icon(
                          Icons.notifications_none,
                          size: 35,
                        ),
                        Positioned(
                            left: 15,
                            child: Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.blueAccent),
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Find Doctor With',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              'Your Hands!',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width - 120,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Search doctor',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        prefixIcon: Icon(Icons.search_rounded)),
                  ),
                ),
                Container(
                  width: 60,
                  height: 62,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueAccent),
                  child: Center(
                    child: Icon(
                      Icons.filter_alt_sharp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  'See All',
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
                itemCount: _cats.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      for(int i=0; i<_cats.length; i++){
                        if(_cats[i]['is_selected']== true){
                          setState(() {
                            _cats[i]['is_selected']= false;
                          });
                        }
                      }
                     setState(() {
                       _cats[index]['is_selected']= true;
                     });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 4 - 20,
                      height: 120,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: _cats[index]['is_selected']
                                  ? Colors.blueAccent
                                  : Colors.grey)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blueAccent,
                            radius: 25,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(_cats[index]['name'])
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
