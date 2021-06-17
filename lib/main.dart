import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  //Container 컨테이너
  //_MyHomePageState createState() => _MyHomePageState();
  //Row, Column 로우 컬럼
  //_MyHomePage2State createState() => _MyHomePage2State();
  //Stack 스택
  //_MyHomePage3State createState() => _MyHomePage3State();
  //Text 텍스트
  //_MyHomePage4State createState() => _MyHomePage4State();
  //TextField 텍스트인풋
  //_MyHomePage5State createState() => _MyHomePage5State();
  //ListView 리스트뷰
 //_MyHomePage6State createState() => _MyHomePage6State();
  //GridView 그리드뷰
  _MyHomePage7State createState() => _MyHomePage7State();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Container(
          //color: Colors.yellow,
          margin: EdgeInsets.all(50),
          decoration: BoxDecoration(
              color: Colors.yellow,
              border: Border.all(width: 30, color: Colors.red),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  topRight: Radius.circular(100)),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 5,
                    blurRadius: 14,
                    offset: Offset(5, 5))
              ],
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.blue, Colors.blueGrey],
                  stops: [.9, .9])),
        ),
      ),
    );
  }
}

class _MyHomePage2State extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(width: 100, height: 100, color: Colors.red[100]),
            Container(width: 100, height: 100, color: Colors.red[200]),
            Container(width: 100, height: 100, color: Colors.red[300])
          ],
        ),
      ),
    );
  }
}

class _MyHomePage3State extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(width: 100, height: 100, color: Colors.red[100]),
            Container(width: 100, height: 100, color: Colors.red[200]),
            Container(width: 100, height: 100, color: Colors.red[300]),
            Container(
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment(.2, .3),
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _MyHomePage4State extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            '안녕하세요 안녕하세요 안녕하세요 안녕하세요',
            maxLines: 1,
            overflow: TextOverflow.fade,
            //overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colors.green, fontSize: 50, fontWeight: FontWeight.w800),
          ),
        ),
      ),
    );
  }
}

class _MyHomePage5State extends State<MyHomePage> {
  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textEditingController.addListener(() {
      var updateString = textEditingController.text;
      print('내가작성한것 > $updateString');
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: Center(
            child: TextField(
          style: TextStyle(
              color: Colors.blue, fontSize: 30, fontWeight: FontWeight.w900),
          inputFormatters: [LengthLimitingTextInputFormatter(10)],
          decoration: InputDecoration(
              border: InputBorder.none,
              hintStyle: TextStyle(color: Colors.grey[300], fontSize: 20),
              hintText: '뭐좀 입력하세요'),
        )),
      ),
    );
  }
}

class _MyHomePage6State extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: [
          Container(height: 100, color: Colors.blue[100],),
          Container(height: 100, color: Colors.blue[200],),
          Container(height: 100, color: Colors.blue[300],),
        ],
      ),
    );
  }
}


class _MyHomePage7State extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 7,
        mainAxisSpacing: 10,
        childAspectRatio: 1/1,
        children: [
          Container(color: Colors.blue[100],),
          Container(color: Colors.blue[200],),
          Container(color: Colors.blue[300],),
          Container(color: Colors.blue[400],),
          Container(color: Colors.blue[500],),
          Container(color: Colors.blue[600],),
          Container(color: Colors.blue[700],),
          Container(color: Colors.blue[100],),
          Container(color: Colors.blue[200],),
          Container(color: Colors.blue[300],),
          Container(color: Colors.blue[400],),
          Container(color: Colors.blue[500],),
          Container(color: Colors.blue[600],),
          Container(color: Colors.blue[700],),
          Container(color: Colors.blue[100],),
          Container(color: Colors.blue[200],),
          Container(color: Colors.blue[300],),
          Container(color: Colors.blue[400],),
          Container(color: Colors.blue[500],),
          Container(color: Colors.blue[600],),
          Container(color: Colors.blue[700],),
        ],
      ),
    );
  }
}