import 'package:flutter/material.dart';
import 'package:flutter_provider_and_setstate1/data.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => Data(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final providerdata = Provider.of<Data>(context);
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(providerdata.value.toString(),
                style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic)),
            RaisedButton(
              onPressed: () {
                providerdata.Increment();
              },

              child: Text("Increment",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
            ),
            RaisedButton(
              onPressed: () {
                providerdata.Decrement();
              },

              child: Text("Decrement",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    ));
  }
}
