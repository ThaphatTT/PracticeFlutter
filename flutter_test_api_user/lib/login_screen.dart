import 'package:flutter/material.dart';

//new import
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter_test_api_user/tab_menu_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State <StatefulWidget> createState(){
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen>{
  final _formKey = GlobalKey<FormState>();
  //create variable in side
  final _navigatorKey = GlobalKey<NavigatorState>();
  final  _emailController = TextEditingController();
  final  _passwordController = TextEditingController();
  bool _obscurePassword = true;

  Future<void> _login() async {
    final url = Uri.parse('https://www.melivecode.com/api/login');
    final headers = {'Content-Type': 'application/json'};
    final body = jsonEncode({
      'username': _emailController.text,
      'password': _passwordController.text
    });

    final res = await http.post(url, headers: headers, body: body);
    final jsonRes = jsonDecode(res.body);
    _showSnackBar(jsonRes['message']);
    if(res.statusCode ==200){
      _navigatorKey.currentState?.push(MaterialPageRoute(
        builder: (context) => TabMenuScreen(email: jsonRes['user']['username'], avatar: jsonRes['user']['avatar'],fname: jsonRes['user']['fname'], lname: jsonRes['user']['lname'],)));
    }
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 2),
    ));
  }


   @override
  Widget build(BuildContext context){
    return Navigator(
      key: _navigatorKey,
      onGenerateRoute: (settings){
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Form(
                  key: _formKey,
                  child : Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(2),
                        child: Column(children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            child: TextFormField(
                            controller: _emailController,
                            decoration: const InputDecoration(
                              labelText: 'Email',
                              hintText: 'Enter your Email',
                              border: OutlineInputBorder()
                              ),
                            keyboardType: TextInputType.emailAddress,
                        ),
                          ),
                        Container(
                          padding: EdgeInsets.all(5),
                          child: TextFormField(
                            controller : _passwordController,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              hintText: 'Enter your password',
                              border: OutlineInputBorder(),
                              suffix: InkWell(
                                onTap: () {
                                  setState(() {
                                    _obscurePassword = !_obscurePassword;
                                  });
                                },
                                child: Icon(
                                  _obscurePassword ? Icons.visibility_off : Icons.visibility
                                ),
                              )
                              ),
                              obscureText: _obscurePassword, // password
                            keyboardType: TextInputType.visiblePassword,
                        ),
                        ),
                        const SizedBox( // create height size box
                          height: 20,
                        ),
                          SizedBox( // see value in process
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {
                                _login();
                              },
                              child: const Text('Login'),
                            ),
                          )
                        ],
                        ),
                        )
                    ],
                  )
                ),
              )
          )
          ));
      }
    );
  }
}