import 'package:flutter/material.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({super.key});

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.upload, size: 30,),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){}, 
              child:const Text('Upload Files'),
            )
          ],
        ),
      ),
    );
  }
}