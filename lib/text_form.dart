import 'package:flutter/material.dart';
import 'widgets/text_form_feild.dart';

class MyApp extends StatefulWidget {
MyApp({super.key});

@override
  State<MyApp> createState() => _MyApp();
}

class _InputDeco{
  static InputDecoration _decoration = InputDecoration(
    labelText: 'this is label text',
    label: Icon(Icons.home),
    border: OutlineInputBorder(borderRadius: const BorderRadius.all(Radius.elliptical(1, 9))),
  ) ;
}



String? _ValidatorEmail(String? value) {
  if (value!.isEmpty) {
    return 'Please enter a Email';
  }
  RegExp? emailRegExp = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
  if (emailRegExp.hasMatch(value)) {
    return 'Please enter a valid email';
  }
  return null;
}

String? _ValidatePhone(String? value) {
  if (value!.isEmpty) {
    return 'Please enter phone number';
  }
  if (value.length != 10) {
    return 'Please Enter a Valid Phone Number';
  }
  return null;
}

class _MyApp extends State<MyApp> {
  final GlobalKey<State> _formKey = GlobalKey<State>();
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
            child: Column(
          children: [
         Custom_Form_Feild(),


            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: _InputDeco._decoration,
              validator: (String? value) {
                if (value!.isEmpty) {
                  return 'Please enter a username';
                }
                return null;
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
              validator: _ValidatorEmail,
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                  labelText: 'Phone',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
              validator: _ValidatePhone,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 20,
              width: double.infinity,
              child: ElevatedButton(
                child: Text('Login'),
                onPressed: () {},
              ),
            )
          ],
        )),
      ),
    );
  }
}
