import 'package:flutter/material.dart';
import 'package:flutter/src/material/icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assetes/sp.jpg"), fit: BoxFit.fill)),
            child: Container(
              height: 150,
              child: Align(
                alignment: Alignment.topCenter,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  SizedBox(
                      height: 30,
                      child: Text(
                        "Following",
                        style: TextStyle(fontSize: 20),
                      )),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SizedBox(
                          height: 30,
                          child: Text(
                            "For You",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    ),
                  ),
                ]),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "@Nitr0me",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text("#foryou #thisisme #nepal"),
                      Text("#summer #nature")
                    ],
                  )),
            ),
          ),
          Positioned(
            bottom: 100,
            right: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.favorite),
                Text("10M"),
                SizedBox(height: 30),
                Icon(Icons.chat_bubble),
                Text("200k"),
                SizedBox(height: 30),
                Icon(Icons.bookmark),
                Text("100k"),
                SizedBox(height: 30),
                Icon(Icons.reply),
                Text("50k"),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group_outlined),
              label: 'Friends',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box_rounded),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.inbox_outlined),
              label: 'Inbox',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Profile',
            )
          ]),
    );
  }
}
