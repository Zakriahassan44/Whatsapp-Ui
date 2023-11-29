import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          backgroundColor: Colors.teal[600],
          bottom: const TabBar(

            tabs: [

              Tab(
                child: Icon(Icons.people_alt_rounded),
              ),
               Tab(
                 child: Tab(text: 'Chats'),
               ),
              Tab(
                child: Tab(text: 'Updates'),

              ),
              Tab(
                child: Tab(text: 'Calls'),
              ),
            ],
          ),
          actions: [
            const Icon(Icons.camera_alt_outlined),
            const SizedBox(width: 10,),
            const SizedBox(width: 10,),
            const Icon(Icons.search_outlined),
            const SizedBox(width: 10,),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert_rounded),
                itemBuilder:
                (context,) => [
                  const PopupMenuItem(
                    value: '1',
                      child: Text('New group')),
                  const PopupMenuItem(
                      value: '1',
                      child: Text('New broadcast')),
                  const PopupMenuItem(
                      value: '1',
                      child: Text('Linked devices')),
                  const PopupMenuItem(
                      value: '1',
                      child: Text('Starred messages')),
                  const PopupMenuItem(
                      value: '1',
                      child: Text('Settings')),
                ] ),
            const SizedBox(width: 10,),
          ],
        ),
        body: TabBarView(
          children: [
            const Text('Community'),
            ListView.builder(itemBuilder: (context, index){
              return const ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                ),
                title: Text('Zakaria'),
                subtitle: Text('salam sang ye!'),
                trailing: Text('6:30 PM'),
              );

            }),
            ListView.builder(itemBuilder: (context, index){
              if (index == 0){
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(('New Updates')),
                      ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.teal,
                                  width: 3

                              )
                          ),
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                          ),
                        ),
                        title: const Text('Zakaria'),
                        subtitle: const Text('2 min ago'),

                        // trailing: Icon(index /2 == 3 ? Icons.phone : Icons.video_call_rounded),
                      ),
                    ],
                  ),
                );
              }
              else{
                return ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: Colors.teal,
                            width: 3

                        )
                    ),
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                    ),
                  ),
                  title: const Text('Zakaria'),
                  subtitle: const Text('2 min ago'),

                  // trailing: Icon(index /2 == 3 ? Icons.phone : Icons.video_call_rounded),
                );
              }



            }),
            ListView.builder(itemBuilder: (context, index){
              return ListTile(
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                ),
                title: const Text('Zakaria'),
                subtitle: const Text('You missed a call'),
                trailing: Icon(index.isEven ? Icons.phone : Icons.video_call_rounded),
                // trailing: Icon(index /2 == 3 ? Icons.phone : Icons.video_call_rounded),
              );

            }),
          ],
        ),
      ),
    );
  }
}
