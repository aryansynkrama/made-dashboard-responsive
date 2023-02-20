import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  final bool isAdvancedUser;
  final String userType;
  final GlobalKey<FormState> formKey;

  DashboardScreen({required this.isAdvancedUser, required this.userType, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome $userType user!',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                key: formKey,
                decoration: InputDecoration(
                  labelText: 'Enter the key',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value != null && value.isNotEmpty && value != '1234') {
                    return 'Invalid key';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              if (isAdvancedUser)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Advanced User Section',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'This is a text that should only be visible to advanced users.',
                    ),
                    SizedBox(height: 16.0),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ShowAllScreen()),
                        );
                      },
                      child: Text('Show All'),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShowAllScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show All'),
      ),
      body: Center(
        child: Text(
          'This is the Show All screen, visible only to advanced users.',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
