import 'package:flutter/material.dart';
import 'package:messenger_screen/models/user/user_model.dart';

class UserScreen extends StatelessWidget {
  List<UserModel> users = [
    UserModel(id: 1, name: 'Moza Swylam', phone: '+2001091270050'),
    UserModel(id: 2, name: 'Abdallah Gamsy', phone: '+2001528570050'),
    UserModel(id: 3, name: 'Amr Ashraf', phone: '+20010985715050'),
    UserModel(id: 4, name: 'Alaa Ashraf', phone: '+200109816050'),
    UserModel(id: 5, name: 'Mahmoud Gamal', phone: '+2001151570050'),
    UserModel(id: 6, name: 'Ali  Yonis', phone: '+200109851050'),
    UserModel(id: 7, name: 'Adham Alpop', phone: '+200108116170050'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('user Screen'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => buildUserItem(users[index]),
        separatorBuilder: (context, index) => Padding(
          padding: const EdgeInsetsDirectional.only(start: 20),
          child: Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.grey[300],
          ),
        ),
        itemCount: users.length,
      ),
    );
  }

  Widget buildUserItem(UserModel user) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              child: Text(
                '${user.id}',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '${user.name}',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  '${user.phone}',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      );
}
