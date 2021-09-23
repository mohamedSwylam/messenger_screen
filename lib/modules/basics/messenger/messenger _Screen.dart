import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 20.0,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/c/c1/Lionel_Messi_20180626.jpg'),
            ),
            SizedBox(width: 15.0),
            Text(
              'Chats',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            radius: 15.0,
            backgroundColor: Colors.blue,
            child: IconButton(
              icon: Icon(Icons.camera_alt),
              iconSize: 16.0,
              color: Colors.white,
              onPressed: () {},
            ),
          ),
          SizedBox(width: 15.0),
          CircleAvatar(
            radius: 15.0,
            backgroundColor: Colors.blue,
            child: IconButton(
              icon: Icon(Icons.edit),
              iconSize: 16.0,
              color: Colors.white,
              onPressed: () {},
            ),
          ),
          SizedBox(width: 15.0),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    5.0,
                  ),
                  color: Colors.grey[300],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(width: 15.0),
                      Text('Search'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildStoryItem(),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 20,
                  ),
                  itemCount: 10,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => buildChatItem(),
                separatorBuilder: (context, index) => SizedBox(
                  height: 15,
                ),
                itemCount: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildStoryItem() => Container(
        width: 60.0,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/commons/c/c1/Lionel_Messi_20180626.jpg'),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(bottom: 3, end: 3),
                  child: CircleAvatar(
                    radius: 7.0,
                    backgroundColor: Colors.red,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              'Mohamed Swylam',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      );

  buildChatItem() => Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/c/c1/Lionel_Messi_20180626.jpg'),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(bottom: 3, end: 3),
                child: CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.red,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mohamed Swylam',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Hello , How are you ?jjjjjjjjjjjjjjjjjjjjjjjjjjjj',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        width: 5.0,
                        height: 5.0,
                        decoration: BoxDecoration(
                            color: Colors.blue, shape: BoxShape.circle),
                      ),
                    ),
                    Text('11:35 pm')
                  ],
                ),
              ],
            ),
          ),
        ],
      );
}
