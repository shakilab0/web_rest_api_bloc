import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_rest_api_bloc/homescreen.dart';

import 'bloc/restapi_profile_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>RestapiProfileBloc())
      ],
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
