import 'package:flutter/material.dart';

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

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Programavimas Flutter framework'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
       title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(

              'Flutter tai atviro kodo UI programinės įrangos kūrimo įrankis '
                  'sukurtas Google. Flutter naudojamas aplikacijų skirtingoms '
                  'platformoms kūrimui. Šis puslapis sukurtas naudojant Flutter, '
                  'o apačioje yra paprastos aplikacijos integruotos į šį '
                  'puslapį pavyzdys:',
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'Pradinis skaičius: '
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            TextButton(

              onPressed: (_incrementCounter),
              child: Text('PADIDINK VIENETU',style: Theme.of(context).textTheme.headline3,)),
            TextButton(
                onPressed: (_decrementCounter),
                child: Text('SUMAŽINK VIENETU',style: Theme.of(context).textTheme.headline3,)),

          ],
        ),
      ),






      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
