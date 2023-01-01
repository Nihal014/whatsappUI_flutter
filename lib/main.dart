import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

void main(List<String> args) {
  runApp(
      myapp()); //function to run the app,passing myapp-(myapp class runs when app runs)
}

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homescreen(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class homescreen extends StatelessWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white, //red bg
        appBar: AppBar(
          title: Text("creating a list"),
        ),
        body: SafeArea(
            child: ListView.separated(
                itemBuilder: (ctx, index) {
                  return ListTile(
                    title: Text('Person $index'),
                    subtitle: Text('messsage $index'),
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS30J_vEx_9M_jnFlf__FqJfKBo5CYaTJFSzw&usqp=CAU'),
                    ),
                    trailing: Text('1$index pm'),
                  );
                },
                separatorBuilder: (ctx, index) {
                  return Divider();
                },
                itemCount: 50)));
  }
}
//ch