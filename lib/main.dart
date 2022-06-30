import 'package:elwedyan/presentation/widgets/custom_expandable_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  double value = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      //  onGenerateRoute: AppRouter.onGenerate,
      home: const Scaffold(
        body: Center(
            child: CustomExpandableList(
          expandableText: 'نوع المنشأة',
          index: 3,
          itemsText: 'fiat${1}',
        )),
      ),
    );
  }
}
