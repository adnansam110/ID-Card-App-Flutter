import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Set your states here
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Id Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/adnanAvatar.jpg'),
              radius: 50.0,
            ),
          ),
          Divider(
            height: 60.0,
            color: Colors.grey[800],
          ),
          Text(
            'Name',
            style: TextStyle(color: Colors.grey[500], letterSpacing: 2.0),
          ),
          SizedBox(height: 10.0),
          Text(
            "Adnan Sameer",
            style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
          SizedBox(height: 20.0),
          Text(
            'Current Level',
            style: TextStyle(color: Colors.grey[500], letterSpacing: 2.0),
          ),
          SizedBox(height: 10.0),
          Text(
            "$ninjaLevel",
            style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
          SizedBox(height: 20.0),
          Row(
            children: [
              Icon(Icons.email, color: Colors.grey[500]),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'adnan.sameer@iomechs.com',
                style: TextStyle(color: Colors.grey[500]),
              ),
            ],
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
    );
  }
}
