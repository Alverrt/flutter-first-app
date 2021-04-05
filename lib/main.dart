import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _colorContainer = Colors.blue;

  void gala() {
    setState(() {
      _colorContainer =
          _colorContainer == Colors.red ? Colors.blue : Colors.red;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(60.0)),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Icon(
                                Icons.arrow_back,
                                size: 36.0,
                              ),
                            )
                          ],
                        ),
                        Container(
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 40.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Fiddle Leaf Fig Topiary',
                                  style: TextStyle(
                                      fontSize: 32.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  '10* Nursery Pot',
                                  style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text('\$',
                                        style: TextStyle(
                                            fontSize: 30.0,
                                            color: Colors.green)),
                                    Text(
                                      '85',
                                      style: TextStyle(
                                          fontSize: 50.0, color: Colors.green),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
              Expanded(
                  child: Container(
                width: double.infinity,
                color: Colors.green,
                child: Padding(
                  padding: EdgeInsets.only(left: 100),
                  child: Text('denemelercesine'),
                ),
              ))
            ],
          ),
        ));
  }
}
