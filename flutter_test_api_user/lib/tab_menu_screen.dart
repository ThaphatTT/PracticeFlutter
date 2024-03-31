import 'package:flutter/material.dart';


class TabMenuScreen extends StatefulWidget {
  final String email;
  final String avatar;
  final String fname;
  final String lname;
  const TabMenuScreen({super.key, required this.email, required this.avatar, required this.fname, required this.lname});

  @override
  State<TabMenuScreen> createState() => _TabMenuScreenState();
}

class _TabMenuScreenState extends State<TabMenuScreen> {
  late String _email;
  late String _avatar;
  late String _fname;
  late String _lname;

  @override
  void initState(){
    super.initState();
    _email = widget.email;
    _avatar = widget.avatar;
    _fname = widget.fname;
    _lname = widget.lname;
  }

  void _logout(){
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          title: Text('6402539'),
          bottom : TabBar(tabs:[
            Tab(text: 'Home', icon: Icon(Icons.home)),
            Tab(text: 'Contact', icon: Icon(Icons.contact_mail)),
            Tab(text: 'Profile', icon: Icon(Icons.person))

          ])
        ),body: TabBarView(
          children: [
            Center(child: Text('Home'),),
            Center(child: Text('Contact'),),
            Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 70,
                          backgroundImage: NetworkImage(_avatar),
                        ),
                        Divider(
                          height:20,
                          thickness: 2,
                          color: Colors.black,
                        ),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              ),
                            children: <TextSpan>[
                              TextSpan(text: 'First Name : ',style: TextStyle(fontWeight:  FontWeight.bold)),
                              TextSpan(text: _fname),
                              TextSpan(text: '                    '),
                              TextSpan(text: 'Last Name : ',style: TextStyle(fontWeight:  FontWeight.bold)),
                              TextSpan(text: _lname)
                            ]),
                        ),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              
                              ),
                            children: <TextSpan>[
                              TextSpan(text: 'Email : ',style: TextStyle(fontWeight:  FontWeight.bold)),
                              TextSpan(text: _email),
                            ]),
                        ),
                        Divider(
                          height:20,
                          thickness: 2,
                          color: Colors.black,
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(Colors.black),),
                          onPressed: _logout, child: const Text('Logout',style: TextStyle(color: Colors.white),))
                      ],
                    ))

          ]),
      )
      );
  }
}