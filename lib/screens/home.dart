import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/screens/contact_list_screen.dart';
import 'package:whatsapp_ui_clone/utils/colors.dart';
import 'package:whatsapp_ui_clone/widgets/contact_list_widget.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
final List<Widget> _widgetsScreens = const [
   Text('community'),
  ContactListScreen(),
   Text('status'),
   Text('calls'),
];


// set the current index of the tab
int _selectedIndex = 1;

// a function that changes the index
void _selectedIndexChange(int index){
  setState(() {
    _selectedIndex = index; // set the '_selectedIndex' to the current index
  });
}

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: _selectedIndex,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: appBarColor,
          title: const Text(
            'WhatsApp',
            style: TextStyle(
                color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.grey,
              ),
            ),
          ],
          bottom:   TabBar(
            indicatorColor: tabColor,
            indicatorWeight: 4,
            labelColor: tabColor,
            unselectedLabelColor: Colors.grey,
            labelStyle: const TextStyle(fontWeight: FontWeight.bold),
            onTap: _selectedIndexChange,
            tabs: const [
              Tab(icon: Icon(Icons.people),),
              Tab(text: 'CHATS',),
              Tab(text: 'STATUS',),
              Tab(text: 'CALLS',),
            ],
          ),
        ),
        body: _widgetsScreens[_selectedIndex],
      ),
    );
  }
}
