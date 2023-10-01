import 'package:flutter/material.dart';

import '../models/chatUsersModel.dart';
import '../widgets/conversationList.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
        name: 'Kriss Benwat',
        messageText: 'Awesome Setup',
        imageURL:
            'https://img.freepik.com/free-photo/handsome-confident-smiling-man-with-hands-crossed-chest_176420-18743.jpg',
        time: 'Now'),
    ChatUsers(
        name: 'Rezi Makarov',
        messageText: 'That\'s Great',
        imageURL:
            'https://img.freepik.com/free-photo/confident-stylish-asian-woman-cross-arms-chest-smiling-standing-blue-background_1258-76001.jpg?w=360',
        time: 'Yesterday'),
    ChatUsers(
        name: 'Gustav Lemelo',
        messageText: 'Hey where are you?',
        imageURL:
            'https://st3.depositphotos.com/1017228/18878/i/450/depositphotos_188781580-stock-photo-handsome-cheerful-young-man-standing.jpg',
        time: '31 Mar'),
    ChatUsers(
        name: 'Bob Ryder',
        messageText: 'Busy! Call me in 20 mins',
        imageURL:
            'https://media.istockphoto.com/id/1019406474/photo/young-contemporary-intelligent-executive-business-man-isolated-on-grey-background-copy-space.jpg?s=612x612&w=0&k=20&c=2sDHvJYuSRTNypqx8rbAFyxUwdvPjUpdsi2kRO-fNxc=',
        time: '28 Mar'),
    ChatUsers(
        name: 'Ken Simada',
        messageText: 'Thankyou, It\'s awesome',
        imageURL:
            'https://media.istockphoto.com/id/1200677760/photo/portrait-of-handsome-smiling-young-man-with-crossed-arms.jpg?s=612x612&w=0&k=20&c=g_ZmKDpK9VEEzWw4vJ6O577ENGLTOcrvYeiLxi8mVuo=',
        time: '23 Mar'),
    ChatUsers(
        name: 'Emma Walkins',
        messageText: 'will update you in evening',
        imageURL:
            'https://media.gettyimages.com/id/1146465144/photo/close-up-photo-beautiful-amazing-she-her-lady-arms-hands-fingers-indicate-empty-space.jpg?b=1&s=170667a&w=0&k=20&c=756Re01lEP29jwA8N1LCVfsQ0dHszsog4qdhGztebLg=',
        time: '17 Mar'),
    ChatUsers(
        name: 'Gilbert Hamminway',
        messageText: 'Can you please share the file?',
        imageURL:
            'https://st2.depositphotos.com/1037473/6372/i/450/depositphotos_63725921-stock-photo-portrait-of-a-handsome-young.jpg',
        time: '24 Feb'),
    ChatUsers(
        name: 'Bella Hammers',
        messageText: 'How are you?',
        imageURL:
            'https://media.istockphoto.com/id/997661938/photo/close-up-portrait-of-smiling-pretty-girl-in-yellow-sweater-isolated-on-gray-background.jpg?s=612x612&w=0&k=20&c=ziL4OdLh1I5VlqRwoPJwrCid0gYjjGfnmtUUhalEQMk=',
        time: '18 Feb'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Conversations",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.pink[50],
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.pink,
                            size: 20,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            "Add New",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(
                    color: Colors.grey.shade600,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.shade600,
                    size: 20,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.grey.shade100,
                    ),
                  ),
                ),
              ),
            ),
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ConversationList(
                  name: chatUsers[index].name,
                  messageText: chatUsers[index].messageText,
                  imageURL: chatUsers[index].imageURL,
                  time: chatUsers[index].time,
                  isMessageRead: (index == 0 || index == 3) ? true : false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
