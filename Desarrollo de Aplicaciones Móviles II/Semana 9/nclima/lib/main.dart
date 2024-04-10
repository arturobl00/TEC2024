import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:nclima/helper/theme_helper.dart';
import 'package:nclima/screens/home/home_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'APP Clima',
      debugShowCheckedModeBanner: false,
      theme: ThemeHelper.light,
      home: HomeView(),
    );
  }
}

