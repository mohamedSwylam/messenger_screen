import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: Icon(
          Icons.menu,
        ),
        title: Text('First App'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notification_important,
            ),
            onPressed: onNotification,
          ),
          IconButton(
            icon: Text('hello'),
            onPressed: () {
              print('hello');
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              width: 200,
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.only( topStart:Radius.circular(20.0))),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [

                     
                    Image(
                      height: 200,
                      width: 200,
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://th.bing.com/th/id/OIP.FzGTjovYfQkOk-jEbWqCgwHaEo?pid=ImgDet&rs=1'),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      color: Colors.black.withOpacity(.7),
                      width: 200,
                      child: Text(
                        'Moza Swylam',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20,color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onNotification() {
    print('notification clicked');
  }
}
