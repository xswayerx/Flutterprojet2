import 'package:flutter/material.dart';
import 'package:project2/Screens/cards.view.dart';
import 'package:project2/Screens/home.view.dart';
import 'package:project2/Screens/login.view.dart';
import 'package:project2/Screens/profile.view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currIndex = 0;

  final List<Widget> pages = const [
    HomeView(),
    LoginView(),
    CardView(),
    ProfileView(),
  ];

  void changePage(int index) {
    setState(() => currIndex = index);
    Navigator.of(context).maybePop(); // close drawer if open
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Application multitâche",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              
              decoration: const BoxDecoration(
                color: Color.fromRGBO(31, 81, 255, 1),
              ),
                child: Row(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundImage: const AssetImage('images/kira7.jpg'),
                    backgroundColor: Colors.white, // optional
                  ),
                  // ...existing code...
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Unknown", style: TextStyle(color: Colors.white, fontSize: 18)),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Image.asset(
                'images/corona.png',
                width: 38,
                height: 38,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.broken_image),
              ),
              title: const Text("corona Tracker"),
              // selected: currIndex == 0,
               onTap: () => {
                Navigator.pop(context),
              },
            ),
            Divider(
              color: Colors.black,
              thickness: 1,
            ),
            
             ListTile(
              leading: Image(image: AssetImage('images/chatbot.jpg'), width: 38, height: 38),
              title: const Text("Emsi chatbot"),
              // selected: currIndex == 0,
              // onTap: () => changePage(0),
            ),
               Divider(
              color: Colors.black,
              thickness: 1,
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
              // selected: currIndex == 0,
              // onTap: () => changePage(0),
            ),
               Divider(
              color: Colors.black,
              thickness: 1,
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              // selected: currIndex == 2,
              // onTap: () => changePage(2),
            ),
               Divider(
              color: Colors.black,
              thickness: 1,
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("logout"),
              // selected: currIndex == 1,
              // onTap: () => changePage(1),
            ),
            
            
          ],
        ),
      ),
      body: Container(
        color: const Color.fromARGB(106, 0, 0, 0),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: IndexedStack(
              index: currIndex,
              children: pages,
            ),
          ),
        ),
      ),
    );
  }
}