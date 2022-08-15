import 'package:contactex/home/contactList/contact_list_page.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
        ],
      ),
      body: ContactListPage(),
      floatingActionButton:SizedBox(
        height: 45,
        width: 45,
        child: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.add),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
    }
}