import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List Carimages = ["Carimages/1.jpg"];
  List carnames = ["ford", "bmw", "kia"];
  List carsubtitle = ["2011", "2015", "2020"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (BuildContext context, int i) {
              return ListTile(
                title: Text("${carnames[i]}"),
                subtitle: Text("${carsubtitle[i]}"),
                leading: Image(image: AssetImage("${Carimages[i]}")),
              );
            },
          ),
        ),
      ),
    );
  }
}
