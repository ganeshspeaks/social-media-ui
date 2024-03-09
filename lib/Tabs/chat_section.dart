import 'package:flutter/material.dart';
import 'package:social_media/Tabs/Data/data.dart';

class ChatSection extends StatefulWidget {
  const ChatSection({super.key});

  @override
  State<ChatSection> createState() => _ChatSectionState();
}

class _ChatSectionState extends State<ChatSection> {

  final List<String> messages = [
    'Hi',
    'Where are you now?',
    'Is coding easy...?',
    'Yesterday!!',
    'I do not know',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Messages'),
      ),

      body: ListView.builder(
        itemCount: person.length,
        itemBuilder: (context, index) {
          return  Padding(
            padding:const EdgeInsets.all(16.0),
            child: Row(
              children: [
                const Icon(Icons.account_circle, size: 35,),
                const SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      person[index],
                      style:const TextStyle(
                        fontSize: 18,
                      ),
                    ),

                    Text(
                      messages[index],
                      style:const TextStyle(
                        color: Colors.black45,
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        },
        
      ),
    );
  }
}