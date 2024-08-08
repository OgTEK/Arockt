import 'package:flutter/material.dart';

import '../components/chatitem.dart';
import '../components/loc_profile.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            children: [
              const LocProfile(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ListView.separated(
                    itemCount: 12,
                    //scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 12),
                        child: ChatItem(
                          index: index,
                          lastMessage: 'You coul d check the first 3 because i know you are not available',
                          name: "Ogar Emmanuel",
                          timestamp: '3 min ago',
                          avatar: "1,923",
                        ),
                      );
                    }, separatorBuilder: (BuildContext context, int index) => const Divider(
                    indent: 70,height: 0.5,       color: Color(0xFF25201C),

                  ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}

