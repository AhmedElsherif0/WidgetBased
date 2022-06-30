import 'package:elwedyan/presentation/widgets/check_box_with_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    bool value = true;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      //  onGenerateRoute: AppRouter.onGenerate,
      home: CheckBoxWithText(
        value: value,
        activeColor: Colors.deepOrange,
        onChange: (value) {},
        textStyle: TextStyle(fontSize: 20),
      ),
    );
  }
}
