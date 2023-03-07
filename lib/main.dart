import 'dart:async';
import 'package:flutter/material.dart';
import 'package:todo_list/home_page.dart';
import 'package:todo_list/signin_page.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    home: Home_Page(),
    debugShowCheckedModeBanner: false,
  ));
}

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const SignIn(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              // SizedBox(
              //   width: 250,
              // ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 3.2,
                ),
                child: const ListTile(
                  title: Text(
                    "TODO-LIST",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "By Roshan",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const LinearProgressIndicator(
                minHeight: 5,
                color: Colors.red,
                backgroundColor: Colors.purple,
              )
            ],
          ),
        ),
      ),
    );
  }
}
