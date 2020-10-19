import 'package:flutter/material.dart';
import 'package:flutter_provider_and_setstate1/data.dart';
import 'package:provider/provider.dart';
class ReceiveData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final providerdata = Provider.of<Data>(context);
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Text(providerdata.value.toString(),style: TextStyle(fontSize: 50),),
          ),
        ),
      ),
    );
  }
}
