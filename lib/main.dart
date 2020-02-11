import 'package:flutter/material.dart';
import 'package:helllow/anotherpage.dart';
import 'package:helllow/home.dart';
import 'package:provider/provider.dart';
import 'classes/counter.dart';

void main() => runApp(MultiProvider(
      providers: [
        Provider<Counter>(
          create: (_) => Counter(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        initialRoute: '/',
        routes: {
          '/': (_) => HomePage(title: 'Pagina inicial'),
          '/second': (context) => SecondPage(),
        },
        theme: ThemeData(
          primaryColor: Colors.amber,
          accentColor: Colors.amber[300] 
          ),
      ),
    ));
