import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State <StatefulWidget> createState(){
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen>{
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          key: _formKey,
          child : Column(
            children: [
              // type 1
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your user name'
                ),
              ),
                ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your password',
                ),
              ),
                ),
                //type form
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      hintText: 'Enter your Email',
                      border: OutlineInputBorder()
                      ),
                    keyboardType: TextInputType.emailAddress,
                  validator: (value){
                    if (value == null || value.isEmpty){
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                  ),
                Container(
                  padding: EdgeInsets.all(5),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      border: OutlineInputBorder()
                      ),
                      obscureText: true, // password
                    keyboardType: TextInputType.visiblePassword,
                  validator: (value){
                    if (value == null || value.isEmpty){
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                ),
                const SizedBox( // create height size box
                  height: 20,
                ),SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        // Validate returns true if the form is valid, or false otherwise.
                        if (_formKey.currentState!.validate()) {
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                        }
                      },
                      child: const Text('Submit'),
                    ),
                  )
                ],
                ),
                )
            ],
          )
        ),
      )
    );
  }
}