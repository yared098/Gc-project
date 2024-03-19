import 'package:flutter/material.dart';

class RequestPage extends StatefulWidget {
  @override
  _RequestPageState createState() => _RequestPageState();
}

class RequestInfo {
  final String title;
  final DateTime date;
  final String to;
  final String status;

  RequestInfo({
    required this.title,
    required this.date,
    required this.to,
    required this.status,
  });
}

class _RequestPageState extends State<RequestPage> {
  List<RequestInfo> requests = [
    RequestInfo(
      title: 'Request 1',
      date: DateTime.now(),
      to: 'John Doe',
      status: 'Pending',
    ),
    RequestInfo(
      title: 'Request 2',
      date: DateTime.now(),
      to: 'Jane Smith',
      status: 'Approved',
    ),
    RequestInfo(
      title: 'Request 3',
      date: DateTime.now(),
      to: 'Alex Johnson',
      status: 'Rejected',
    ),
    RequestInfo(
      title: 'Request 4',
      date: DateTime.now(),
      to: 'Sarah Williams',
      status: 'Pending',
    ),
    RequestInfo(
      title: 'Request 5',
      date: DateTime.now(),
      to: 'Michael Brown',
      status: 'Approved',
    ),
  ];

  String? selectedMenuItem;

  TextEditingController textController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  TextEditingController areaController = TextEditingController();

  void showMessage(String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Message'),
          content: Text(message),
          actions: <Widget>[
            ElevatedButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void submitRequest() {
    String text = textController.text;
    String message = messageController.text;
    String area = areaController.text;

    // Perform the submission logic here
    // You can access the entered values (text, message, area) and process them as needed

    // Display a success message
    showMessage('Request submitted successfully');

    // Clear the form fields
    textController.clear();
    messageController.clear();
    areaController.clear();
  }

  @override
  void dispose() {
    textController.dispose();
    messageController.dispose();
    areaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Requests'),
      ),
      body: ListView.builder(
        itemCount: requests.length,
        itemBuilder: (context, index) {
          RequestInfo request = requests[index];
          return Card(
            child: ListTile(
              title: Text(request.title),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Date: ${request.date.toString()}'),
                  Text('To: ${request.to}'),
                  Text('Status: ${request.status}'),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    DropdownButton<String>(
                      value: selectedMenuItem,
                      hint: Text('Select an option'),
                      onChanged: (String? value) {
                        setState(() {
                          selectedMenuItem = value;
                        });
                      },
                      items: [
                        DropdownMenuItem(
                          value: 'Text',
                          child: Text('Text'),
                        ),
                        DropdownMenuItem(
                          value: 'Message',
                          child: Text('Message'),
                        ),
                        DropdownMenuItem(
                          value: 'Area',
                          child: Text('Area'),
                        ),
                      ],
                    ),
                    if (selectedMenuItem == 'Text')
                      TextField(
                        controller: textController,
                        decoration: InputDecoration(labelText: 'Text'),
                      ),
                    if (selectedMenuItem == 'Message')
                      TextField(
                        controller: messageController,
                        decoration: InputDecoration(labelText: 'Message'),
                        maxLines: null,
                      ),
                    if (selectedMenuItem == 'Area')
                      TextField(
                        controller: areaController,
                        decoration: InputDecoration(labelText: 'Area'),
                        maxLines: null,
                      ),
                    SizedBox(height: 16.0),
                    ElevatedButton(
                      onPressed: submitRequest,
                      child: Text('Submit'),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
