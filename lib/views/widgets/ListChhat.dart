import 'package:chatt/views/pages/Chat.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Listchhat extends StatefulWidget {
  const Listchhat({super.key});

  @override
  State<Listchhat> createState() => _ListchhatState();
}

class _ListchhatState extends State<Listchhat> {
  CollectionReference messages = FirebaseFirestore.instance.collection('messages');
  TextEditingController textff= TextEditingController();
  @override
  Widget build(BuildContext context) {
    // Using MediaQuery to get the screen size if needed
    Size size = MediaQuery.of(context).size;

    return FutureBuilder<DocumentSnapshot>(future: messages.doc('Ey3iEB749zhdzCnGoepq').get(), builder: (context, snapshot){
      print(snapshot.data?['message']);
    return  Scaffold(
      body: Column(
        children: [
          Expanded( // Expanded allows the ListView to take the available space in the Column
            child: ListView.builder(
              itemCount: 20, // Specify the number of items to be generated
              itemBuilder: (context, index) {
                return Chat(); // Each item is a Chat widget
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: textff,
              onSubmitted: (value) {
                messages.add({
                 'message': value,
                });
                textff.clear();
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Type your message here...',
              ),
            ),
          ),
        ],
      ),
    );
    });
  }
}
