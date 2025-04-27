import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:good_navbar/content/bloc/nav_bloc.dart';
import 'package:good_navbar/registration/bloc/page_bloc.dart';
import 'package:good_navbar/registration/bloc/page_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navbar',
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => PageBloc()),
          BlocProvider(create: (context) => NavBloc()),
        ],
        child: const PageRouter(),
      ),
    );
  }
}
