import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '@codewithbiki',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('@codewithbiki'),
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('About'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Contact'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              title: Text('@codewithbiki'),
              centerTitle: true,
              backgroundColor: Colors.black,
              actions: [
                IconButton(
                  color: Colors.red,
                  hoverColor: Colors.white,
                  splashColor: Colors.blue,
                  icon: Icon(Icons.mail),
                  onPressed: () {},
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SingleChildScrollView(
                    child: Row(
                      children: [
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
                          child: CircleAvatar(
                            minRadius: 70,
                            backgroundImage: NetworkImage(
                                'https://media-exp1.licdn.com/dms/image/C4E03AQEKrR7roe7fBA/profile-displayphoto-shrink_800_800/0/1645966821226?e=1654732800&v=beta&t=q6uKUKHYKMftqCQXKpqFNErjtI4nHj7n_Cfnr7tUbx0'),
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Dipayan Sarkar",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.9,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 5,
                    ),
                  ],
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        Text(
                          "About Me",
                          style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "~~~~~~~~~~~~~~~~~~~",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        Text(
                          "Hey there, I'm Dipayan Sarkar. I'm a student of Rakrishna Mahato Government Engineering College, Purulia. I'm currently pursuing my Bachelors in Computer Science. I'm a big fan of Flutter and Dart. This website is also made with the same technology, I hope you enjoy it. These are my skills and projects. I hope you will find them useful: ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        Wrap(
                          alignment: WrapAlignment.center,
                          runSpacing: 15,
                          children: [
                            Chip(
                                avatar: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://cdn.dribbble.com/users/1622791/screenshots/11174104/flutter_intro.png"),
                                ),
                                label: Text("Flutter")),
                            SizedBox(
                              width: 10,
                            ),
                            Chip(
                                avatar: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "data:image/jpeg;base64,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"),
                                ),
                                label: Text("Dart")),
                            SizedBox(
                              width: 10,
                            ),
                            Chip(
                                avatar: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "data:image/jpeg;base64,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"),
                                ),
                                label: Text("Python")),
                            SizedBox(
                              width: 10,
                            ),
                            Chip(
                              avatar: CircleAvatar(
                                backgroundColor: Colors.blue,
                                child: Text("C"),
                              ),
                              label: Text("C Language"),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Chip(
                                avatar: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://is4-ssl.mzstatic.com/image/thumb/Purple116/v4/23/cb/d3/23cbd3f6-9fe2-1bdf-7a0c-9b2a50b090ef/AppIcon-0-0-1x_U007emarketing-0-0-0-7-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/1200x630wa.png"),
                                ),
                                label: Text("Canva")),
                            SizedBox(
                              width: 10,
                            ),
                            Chip(
                              avatar: CircleAvatar(
                                backgroundColor: Colors.green,
                                child: Text("D"),
                              ),
                              label: Text("DSA"),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Chip(
                              avatar: CircleAvatar(
                                backgroundColor: Colors.pink,
                                backgroundImage: NetworkImage(
                                    "data:image/jpeg;base64,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"),
                              ),
                              label: Text("Content Creator"),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.08,
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Center(
                            child: Row(children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: Icon(
                                  Icons.download,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "  Download Resume",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ]),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 5,
                    ),
                  ],
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        Text(
                          "My Projects",
                          style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "~~~~~~~~~~~~~~~~~~~",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        Text(
                          "Hey there, I'm Dipayan Sarkar. I'm a student of Rakrishna Mahato Government Engineering College, Purulia. I'm currently pursuing my Bachelors in Computer Science. I'm a big fan of Flutter and Dart. This website is also made with the same technology, I hope you enjoy it. These are my skills and projects. I hope you will find them useful: ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        Wrap(
                          alignment: WrapAlignment.center,
                          runSpacing: 15,
                          children: [
                            Chip(
                                avatar: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://cdn.dribbble.com/users/1622791/screenshots/11174104/flutter_intro.png"),
                                ),
                                label: Text("Flutter")),
                            SizedBox(
                              width: 10,
                            ),
                            Chip(
                                avatar: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "data:image/jpeg;base64,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"),
                                ),
                                label: Text("Dart")),
                            SizedBox(
                              width: 10,
                            ),
                            Chip(
                                avatar: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "data:image/jpeg;base64,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"),
                                ),
                                label: Text("Python")),
                            SizedBox(
                              width: 10,
                            ),
                            Chip(
                              avatar: CircleAvatar(
                                backgroundColor: Colors.blue,
                                child: Text("C"),
                              ),
                              label: Text("C Language"),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Chip(
                                avatar: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://is4-ssl.mzstatic.com/image/thumb/Purple116/v4/23/cb/d3/23cbd3f6-9fe2-1bdf-7a0c-9b2a50b090ef/AppIcon-0-0-1x_U007emarketing-0-0-0-7-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/1200x630wa.png"),
                                ),
                                label: Text("Canva")),
                            SizedBox(
                              width: 10,
                            ),
                            Chip(
                              avatar: CircleAvatar(
                                backgroundColor: Colors.green,
                                child: Text("D"),
                              ),
                              label: Text("DSA"),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Chip(
                              avatar: CircleAvatar(
                                backgroundColor: Colors.pink,
                                backgroundImage: NetworkImage(
                                    "data:image/jpeg;base64,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"),
                              ),
                              label: Text("Content Creator"),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.08,
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Center(
                            child: Row(children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: Icon(
                                  Icons.download,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "  Download Resume",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ]),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
