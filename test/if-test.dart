import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Controller(),
  ));
}



class Controller extends StatefulWidget {
  @override
  State<Controller> createState() => _ControllerState();
}

class _ControllerState extends State<Controller> {
  var x;
  TextEditingController _email = TextEditingController();

  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Scaffold(
          body: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 15, width: 15),
                TextField(
                  decoration:
                      InputDecoration(labelText: 'Email', hintText: 'Enter Email'),
                  controller: _email,
                ),
                SizedBox(
                  height: 15,
                  width: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Password', hintText: 'Enter Password'),
                  controller: _password,
                ),
                SizedBox(
                  height: 15,
                  width: 15,
                ),
                Container(
                  height: 10,
                  width: 20,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (_email.text == 'admin' || _email.text == 'admin') {
                          if (_password.text == 'admin' ||
                              _password.text == 'admin') {
                            x = 'welcome';
                          }
                        }
                      });

                    },
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          SnackBar(content: Text('$x')),
                          Text(
                            'Login',
                            style: TextStyle(color: Colors.amber, fontSize: 10.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
