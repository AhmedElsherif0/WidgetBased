import 'package:elwedyan/presentation/widgets/custom_elevated_button.dart';
import 'package:elwedyan/presentation/widgets/custom_form_field.dart';
import 'package:elwedyan/presentation/widgets/radio_button_list_tile.dart';
import 'package:flutter/material.dart';

enum Valuable {
  value1,
  value2,
  value3,
}

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

  PaymentMethod payPal = PaymentMethod.paypal;
  PaymentMethod paymentMethod = PaymentMethod.other;
  PaymentMethod creditCard = PaymentMethod.creditCard;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      //  onGenerateRoute: AppRouter.onGenerate,
      home: Scaffold(
        body: Center(
            child: CustomFormField(
              hintText: 'Email',
              textInputType: TextInputType.emailAddress,
            )),
      ),
    );
  }
}
