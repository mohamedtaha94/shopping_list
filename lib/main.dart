import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_list/widgets/grocery_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 740),
      builder:
          (context, child) => MaterialApp(
            title: 'Flutter Groceries',
            theme: ThemeData.dark().copyWith(
              colorScheme: ColorScheme.fromSeed(
                seedColor: const Color.fromARGB(255, 147, 229, 250),
                brightness: Brightness.dark,
                surface: const Color.fromARGB(255, 42, 51, 59),
              ),
              scaffoldBackgroundColor: const Color.fromARGB(255, 50, 58, 60),
            ),
            home: GroceryList(),
          ),
    );
  }
}
