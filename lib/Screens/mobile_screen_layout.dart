import 'package:flutter/material.dart';
import 'package:my_whatsapp/colors.dart';
import 'package:my_whatsapp/widgets/contacts_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
     child: Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        elevation: 0,
        title: const Text("Whatsapp clone",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.grey,
          fontSize: 20,
        ),),
        centerTitle: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search, color: Colors.grey,),),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert, color: Colors.grey,),),
        ],
        bottom: const TabBar(
          indicatorColor: tabColor,
          indicatorWeight: 4,
          unselectedLabelColor: Colors.grey,
          labelStyle: TextStyle(
            fontWeight: FontWeight.bold,
          ),

          tabs: [
          Tab(text: 'Chats',),
          Tab(text: 'Status',),
          Tab(text: 'Groups',),
          Tab(text: 'Calls ',),
        ]),
      ),
      body: const ContactsList(),
      ),
     );
  }
}