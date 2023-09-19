import 'package:flutter/material.dart';
import '../../app.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            label: 'Characters',
          ),
          NavigationDestination(
            icon: Icon(Icons.fmd_good_outlined),
            label: 'Location',
          ),
          NavigationDestination(
            icon: Icon(Icons.video_collection_outlined),
            label: 'Episodes',
          ),
        ],
      ),
      body: [
        const CharactersPage(),
        Container(
          color: Colors.green[100],
          alignment: Alignment.center,
          child: const Text('Location'),
        ),
        Container(
          color: Colors.blue[100],
          alignment: Alignment.center,
          child: const Text('Episodes'),
        ),
      ][selectedIndex],
    );
  }
}
