import 'package:flutter/material.dart';
import 'package:notes_app/addnotes.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        automaticallyImplyLeading: false,
        title: Center(child: Text('List of Notes')),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView.separated(
          separatorBuilder: (_, __) => Divider(
            height: 1,
            color: Colors.black,
          ),
          itemBuilder: (_, index) {
            return ListTile(
              title: Text(
                'Hello',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              subtitle: Text('Last edited on 20/05,'),
            );
          },
          itemCount: 35,
        ),
      ),
    );
  }
}
