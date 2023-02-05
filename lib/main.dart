import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Bloc_Observer.dart';
import 'Layout/cubit/cubit.dart';
import 'Layout/home_Layout.dart';

void main() async {

  BlocOverrides.runZoned(
        () async {
          WidgetsFlutterBinding.ensureInitialized();
          if (Platform.isWindows) await DesktopWindow.setMinWindowSize(Size(1400, 100));

          runApp(MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(context) =>  AppCubit(),
      child: MaterialApp(
        title: 'consaltation',

        themeMode: ThemeMode.light,
        debugShowCheckedModeBanner: false,

        home: Home_Layout(),
      ),
    );

  }
}
