import 'package:flutter/material.dart';

// ignore: camel_case_types
class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

// ignore: camel_case_types
class _Home_PageState extends State<Home_Page> {
  DateTime? _selectedDate;

  Future<void> _datePicker(BuildContext context) async {
    await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2023),
      lastDate: DateTime(2025),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
      });
    });
  }

  Future<void> _show(BuildContext context) async {
    showDialog(
        context: context,
        builder: (context) {
          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              title: const Text("Set Task"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                        label: const Text("New Task"),
                        hintText: "New Task..",
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 3,
                            color: Color.fromARGB(255, 5, 135, 183),
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                      height: 55.0,
                      width: 210.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5.0,
                              spreadRadius: 1.0,
                              offset: Offset(2, 2),
                            )
                          ]),
                      child: ListTile(
                        trailing: GestureDetector(
                          onTap: () async {
                            await _datePicker(context);
                            setState(() {});
                          },
                          child: const Icon(
                            Icons.calendar_month,
                            color: Color.fromARGB(255, 46, 3, 94),
                          ),
                        ),
                        title: Text(
                          _selectedDate != null
                              ? _selectedDate.toString()
                              : 'No Date Selected',
                        ),
                      )),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {},
                  child: const Text("OK"),
                ),
                TextButton(
                  onPressed: (() => Navigator.of(context).pop()),
                  child: const Text("CLOSE"),
                ),
              ],
            );
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.settings,
          color: Colors.blue,
        ),
        centerTitle: true,
        title: const Text(
          "All Task",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
          itemCount: 8,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                        spreadRadius: 1.0,
                        offset: Offset(2, 2),
                      )
                    ]),
                child: const ListTile(
                  title: Text("text 1"),
                  subtitle: Text("2022/10/10"),
                ),
              ),
            );
          }),
        ),
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () => _show(context),
        backgroundColor: const Color.fromARGB(255, 76, 3, 125),
        child: const Icon(
          Icons.add,
          size: 25.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
