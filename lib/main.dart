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
    const productImage =
        'https://i.pinimg.com/originals/8f/bf/44/8fbf441fa92b29ebd0f324effbd4e616.png';

    return Scaffold(
        backgroundColor: Colors.green,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                  flex: 4,
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
                              padding: const EdgeInsets.all(12.0),
                              child: Icon(
                                Icons.arrow_back,
                                size: 32.0,
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
                                  height: 2.0,
                                ),
                                Text(
                                  '10* Nursery Pot',
                                  style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
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
                                ),
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: FloatingActionButton(
                                  onPressed: () {},
                                  backgroundColor: Colors.green,
                                  child: Icon(Icons.plus_one),
                                ),
                              ),
                              Container(
                                width: 150,
                                child: Image.network(
                                  productImage,
                                  fit: BoxFit.cover,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
              Expanded(
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    width: double.infinity,
                    color: Colors.green,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [Text('some text')],
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  color: Colors.red,
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    )),
              )
            ],
          ),
        ));
  }
}
