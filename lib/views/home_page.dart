import 'package:flutter/material.dart';
import 'package:my_responsive_screen/views/example_2.dart';
import 'package:my_responsive_screen/views/my_example.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String userType = "";
  bool isAdvancedUser = true;

  void updateText() {
    setState(() {
      isAdvancedUser == true ? userType == "Advanced User" : "Normal User";
    });
  }

  int? key;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(userType),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyDashBoard(
                    isAdvancedUser: isAdvancedUser = key == 1234 ? true : false,
                    userType: userType,
                    formKey: formKey,
                  ),
                ),
              ),
              child: Text("DashBoard"),
            ),
            Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter Key",
                    ),
                    keyboardType: TextInputType.number,
                    onSaved: (value) {
                      key = int.tryParse(value!)!;
                      userType = key == 1234 ? "Advanced User" : "Normal User";
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      formKey.currentState!.save();
                      setState(() {});
                    },
                    child: Text("Submit"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
