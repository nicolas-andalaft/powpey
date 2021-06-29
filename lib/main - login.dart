import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: TextStyle(
              fontFamily: "Arial",
              fontSize: 70,
              color: Color.fromRGBO(61, 235, 113, 1),
              fontWeight: FontWeight.bold),
          headline2: TextStyle(
              fontFamily: "Arial",
              fontSize: 35,
              color: Color.fromRGBO(61, 235, 113, 1),
              fontWeight: FontWeight.bold),
          headline3: TextStyle(
              fontFamily: "Arial",
              fontSize: 15,
              color: Color.fromRGBO(61, 235, 113, 1),
              fontWeight: FontWeight.bold),
        ),
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'POWPEY'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(1, 9, 3, 1),
      // appBar: AppBar(),
      body: ColorfulSafeArea(
        color: Color.fromRGBO(1, 9, 3, 1),
        child: Center(
          child: Column(
            children: [
              CustomPaint(
                painter: OpenPainter(),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Container(
                  // color: Colors.blue,
                  alignment: Alignment(-1.8, 0),
                  child: SvgPicture.asset(
                    "assets/icons/testefinal.svg",
                    height: 200,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Container(
                    child: Text(
                  'POWPEY',
                  style: Theme.of(context).textTheme.headline1,
                )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 1, 0, 0),
                child: Container(
                    child: Text(
                  'O seu app de finanças.',
                  style: Theme.of(context).textTheme.headline2,
                )),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(190, 50, 20, 0),
                    child: Container(
                      height: 40,
                      width: 45,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: SvgPicture.asset("assets/icons/facebook.svg"),
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(61, 235, 113, 1),
                            onPrimary: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 55, 20, 0),
                    child: Text(
                      '|',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                    child: Container(
                      height: 40,
                      width: 45,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: SvgPicture.asset(
                          "assets/icons/facebook.svg",
                          height: 22,
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(61, 235, 113, 1),
                            onPrimary: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Container(
                    child: Text(
                  'LOGUE POR REDE SOCIAL OU POR EMAIL',
                  style: Theme.of(context).textTheme.headline3,
                )),
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35, 20, 5, 0),
                        child: Container(
                            height: 50,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14.0),
                              color: Color.fromRGBO(31, 39, 38, 1),
                            ),
                            child: TextField(
                              style: Theme.of(context).textTheme.headline3,
                              cursorColor: Color.fromRGBO(61, 235, 113, 1),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  contentPadding:
                                      EdgeInsets.fromLTRB(15, 0, 15, 0),
                                  hintText: "Insira seu email",
                                  hintStyle: TextStyle(
                                      color: Color.fromRGBO(121, 153, 149, 1))),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35, 20, 5, 25),
                        child: Container(
                            height: 50,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14.0),
                              color: Color.fromRGBO(31, 39, 38, 1),
                            ),
                            child: TextField(
                              obscureText: true,
                              style: Theme.of(context).textTheme.headline3,
                              cursorColor: Color.fromRGBO(61, 235, 113, 1),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  contentPadding:
                                      EdgeInsets.fromLTRB(15, 0, 15, 0),
                                  hintText: "Insira sua senha",
                                  hintStyle: TextStyle(
                                      color: Color.fromRGBO(121, 153, 149, 1))),
                            )),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: Container(
                      height: 100,
                      width: 80,
                      child: FloatingActionButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.arrow_forward_sharp,
                          color: Colors.black,
                        ),
                        backgroundColor: Color.fromRGBO(61, 235, 113, 1),
                      ),
                    ),
                    // color: Colors.blue,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Container(
                    child: Text(
                  'OU',
                  style: Theme.of(context).textTheme.headline3,
                )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: Container(
                  height: 40,
                  width: 150,
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.arrow_forward_sharp),
                    label: Text('Cadastre-se'),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(61, 235, 113, 1),
                        onPrimary: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              ),
              CustomPaint(
                painter: OpenPainter2(),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(320, 60, 0, 0),
                child: SvgPicture.asset(
                  "assets/icons/dollar.svg",
                  height: 300,
                  width: 180,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OpenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Color.fromRGBO(61, 235, 113, 1)
      ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset(-170, 25), 220, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class OpenPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Color.fromRGBO(61, 235, 113, 1)
      ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset(190, 270), 220, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
