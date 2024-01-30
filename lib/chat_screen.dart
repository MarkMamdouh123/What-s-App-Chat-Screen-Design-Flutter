import 'package:chat_screen_sample_flutter/message.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: BackButton(
            color: Colors.white,
            onPressed: () {},
          ),
          title: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/person.jpg'),
              ),
              SizedBox(width: 10),
              Text('Person', style: TextStyle(color: Colors.white)),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.video_call,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.call,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert_sharp,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.fill)),
          child: Column(
            children: [
              Message(
                  imagePath: 'assets/images/person1.jpg',
                  textDirection: TextDirection.ltr,
                  text: 'This is my first message'),
              Message(
                  imagePath: 'assets/images/person2.jpg',
                  textDirection: TextDirection.rtl,
                  text: 'This is my second message'),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.emoji_emotions,
                                color: Colors.white,
                              ),
                              suffixIcon: Icon(
                                Icons.attach_file_outlined,
                                color: Colors.white,
                              ),
                              hintText: "write your message here",
                              hintStyle:
                                  TextStyle(color: Colors.white, fontSize: 18),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.white, width: 2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))))),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    FloatingActionButton(
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(35)),
                          borderSide: BorderSide(color: Colors.white)),
                      onPressed: () {},
                      backgroundColor: Colors.black,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.mic,
                            color: Colors.white,
                            size: 30,
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
