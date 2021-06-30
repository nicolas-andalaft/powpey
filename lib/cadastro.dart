import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'main - login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.light,
    statusBarBrightness: Brightness.light,
    statusBarColor: Colors.transparent,
  ));
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
          headline4: TextStyle(
              fontFamily: "Arial",
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Cadastro'),
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
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 60, 99, 0),
              child: Text(
                'Você está a um passo de uma melhor gestão financeira.',
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 200, 0),
              child: Container(
                  height: 20,
                  width: 125,
                  alignment: Alignment(0, 200),
                  child: Text(
                    'USE UMA CONTA',
                    style: Theme.of(context).textTheme.headline3,
                  )),
            ),
            Row(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(60, 50, 20, 0),
                child: Container(
                  height: 60,
                  width: 65,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: SvgPicture.asset(
                      "assets/icons/facebook.svg",
                      height: 35,
                    ),
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
                  height: 60,
                  width: 65,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: SvgPicture.asset(
                      "assets/icons/google.svg",
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(61, 235, 113, 1),
                        onPrimary: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              ),
              CustomPaint(
                painter: OpenPainter3(),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                child: Container(
                  alignment: Alignment(1, 0),
                  //color: Colors.blue,
                  child: SvgPicture.asset(
                    "assets/icons/arrowd.svg",
                    height: 250,
                    width: 250,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 200, 0),
                child: Container(
                    height: 20,
                    width: 125,
                    alignment: Alignment(0, 200),
                    child: Text(
                      'USE UMA CONTA',
                      style: Theme.of(context).textTheme.headline3,
                    )),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 260, 0),
              child: Container(
                  height: 20,
                  width: 240,
                  alignment: Alignment(0, 100),
                  child: Text(
                    'OU CRIE UMA DO ZERO',
                    style: Theme.of(context).textTheme.headline3,
                  )),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 80, 20, 0),
                  child: Container(
                      height: 50,
                      width: 220,
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
                            contentPadding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                            hintText: "nome",
                            hintStyle: TextStyle(
                                color: Color.fromRGBO(121, 153, 149, 1))),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
                  child: Container(
                      height: 50,
                      width: 220,
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
                            contentPadding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                            hintText: "data de nascimento",
                            hintStyle: TextStyle(
                                color: Color.fromRGBO(121, 153, 149, 1))),
                      )),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Container(
                      height: 50,
                      width: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.0),
                        color: Color.fromRGBO(31, 39, 38, 1),
                      ),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        style: Theme.of(context).textTheme.headline3,
                        cursorColor: Color.fromRGBO(61, 235, 113, 1),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            contentPadding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                            hintText: "cpf",
                            hintStyle: TextStyle(
                                color: Color.fromRGBO(121, 153, 149, 1))),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Container(
                      height: 50,
                      width: 220,
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
                            contentPadding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                            hintText: "email",
                            hintStyle: TextStyle(
                                color: Color.fromRGBO(121, 153, 149, 1))),
                      )),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Container(
                      height: 50,
                      width: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.0),
                        color: Color.fromRGBO(31, 39, 38, 1),
                      ),
                      child: TextField(
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        style: Theme.of(context).textTheme.headline3,
                        cursorColor: Color.fromRGBO(61, 235, 113, 1),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            contentPadding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                            hintText: "senha",
                            hintStyle: TextStyle(
                                color: Color.fromRGBO(121, 153, 149, 1))),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Container(
                      height: 50,
                      width: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.0),
                        color: Color.fromRGBO(31, 39, 38, 1),
                      ),
                      child: TextField(
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        style: Theme.of(context).textTheme.headline3,
                        cursorColor: Color.fromRGBO(61, 235, 113, 1),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            contentPadding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                            hintText: "repita",
                            hintStyle: TextStyle(
                                color: Color.fromRGBO(121, 153, 149, 1))),
                      )),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(310, 15, 0, 0),
              child: Container(
                height: 50,
                width: 150,
                child: ElevatedButton.icon(
                  icon: Icon(Icons.arrow_forward_sharp),
                  label: Text(
                    'Vamos lá!',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyHomePage(
                                  title: 'a',
                                )));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(61, 235, 113, 1),
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
            ),
            CustomPaint(
              painter: OpenPainter4(),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 80, 0, 0),
              child: Container(
                alignment: Alignment(-1, 0),
                //color: Colors.blue,
                child: SvgPicture.asset(
                  "assets/icons/chevronsr.svg",
                  height: 190,
                  width: 190,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
