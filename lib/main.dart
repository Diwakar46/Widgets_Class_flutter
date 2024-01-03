import 'package:demo/widgets/elevated_button.dart';
import 'package:demo/widgets/text_form_feild.dart';
import 'package:flutter/material.dart';
import 'widgets/app_bar.dart';

void main() => runApp(const MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        trailing_icon: Icons.home,
        appbar_bg: Colors.black,
        my_title: const Text('Title'),
        leading_icon: const Icon(Icons.menu),
        my_elevation: 8.0,
      ),
      body: SizedBox(
        height: 500,
        width: 380,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 100,
            left: 12,
            right: 10,
          ),
          child: Column(
            children: const [
              Image( width: 210,height: 90,image: AssetImage('images/2024.jpg')),
              SizedBox(
                height: 10,
              ),
              Custom_Form_Feild(
                obscureText: false,
                o_border_radius: 6.0,
                bordersidecolor: Colors.black,
                label_Text: 'User Name',
                hint_text: 'Enter User Name',
              ),
              SizedBox(
                height: 15,
              ),
              Custom_Form_Feild(
                obscureText: true,
                o_border_radius: 6.0,
                bordersidecolor: Colors.black,
                label_Text: 'Password',
                hint_text: 'Enter Password',
              ),
              SizedBox(
                height: 10,
              ),
              Custom_Elevated_Button(
                button_Color: Colors.black,
                button_text: 'login',
              )
            ],
          ),
        ),
      ),
    );
  }
}
