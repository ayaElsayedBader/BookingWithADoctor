import 'package:flutter/material.dart';

import '../../../core/resource/val_app.dart';

import '../widgets/app_bar_widget_chat_screen.dart';
import '../widgets/chat_smaple.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(children: [
              appBarWidgetChatScreen(),
              Padding(
                padding: const EdgeInsets.all(ValApp.va10),
                child: Expanded(
                  child: SizedBox(
                    height: ValApp.va600,
                    child: ListView.separated(
                      itemCount: 20,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return ChatSample();
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: ValApp.va18,
                        );
                      },
                    ),
                  ),
                ),
              ),
              BottomNavigationBar(backgroundColor: Colors.indigo, items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.add),
                    label: '',
                    backgroundColor: Colors.purple),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.face,
                      color: Colors.amber,
                    ),
                    label: '',
                    backgroundColor: Colors.purple),
              ]),
            ]),
          ),
        ],
      ),
    );
  }
}
