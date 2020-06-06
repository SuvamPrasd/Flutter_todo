import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import './screens/todoScreen.dart';
import './models/gitCommands.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Git Commands',
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: Todo(),
    );
  }
}

class Todo extends StatefulWidget {
  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  // final todo = List.generate(
  //   20,
  //   (index) => TodoList('Todo $index',
  //       'A description of what needs to be done for Todo $index'),
  // );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            key: GlobalKey(
              debugLabel: 'appBar12',
            ),
            backgroundColor: Colors.black,
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.info),
                onPressed: () {
                  return showAboutDialog(
                      context: context,
                      applicationIcon: const Icon(Icons.wb_sunny),
                      applicationLegalese: 'No One can copy the source code',
                      applicationVersion: '1.0v',
                      children: [
                        const CircleAvatar(
                          child: const Icon(Icons.whatshot),
                        )
                      ]);
                },
                iconSize: 40,
              )
            ],
            title: const Text(
              'Git Commands',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://cdn.pixabay.com/photo/2017/07/10/23/45/cubes-2492010_960_720.jpg',
                fit: BoxFit.cover,
                alignment: Alignment.bottomCenter,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
                margin: const EdgeInsets.only(
                  bottom: 30,
                ),
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    const Text(
                      'What is Git?',
                      style: TextStyle(
                        fontSize: 25,
                        letterSpacing: 1,
                        // color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Git is a version control system that keeps track of your current work, storing the modifications in a central repository, and even retireve your previous work using Git tool.',
                      style: const TextStyle(
                        height: 1.4,
                        wordSpacing: 2,
                        letterSpacing: 0.3,
                        // color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'What is Github?',
                      style: TextStyle(
                        fontSize: 25,
                        letterSpacing: 1,
                        // color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Github is a hub or platform where you can store your programs source code, collaborate with other programmers, and through git tool you can keeps track of your current work.',
                      style: const TextStyle(
                        height: 1.4,
                        wordSpacing: 2,
                        letterSpacing: 0.3,
                        // color: Colors.white,
                      ),
                    )
                  ],
                )),
          ),
          SliverGrid(
              delegate: new SliverChildBuilderDelegate((ctx, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (ctx) => TodoScreen(),
                            settings:
                                RouteSettings(arguments: gitCommand[index])));
                  },
                  child: GridTile(
                    child: Card(
                        color: Colors.black87,
                        margin: const EdgeInsets.all(10.0),
                        shape: const BeveledRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                          ),
                        ),
                        elevation: 0,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Center(
                            child: Text(
                              gitCommand[index]['title'],
                              style: const TextStyle(
                                height: 1.4,
                                color: Colors.white,
                                wordSpacing: 2,
                                fontSize: 20,
                                letterSpacing: 0.3,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )),
                  ),
                );
              }, childCount: gitCommand.length),
              gridDelegate: new SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 2.0,
                crossAxisSpacing: 2.0,
                childAspectRatio: 1.0,
              ))
        ],
      ),
    );
  }
}

// body: ListView.builder(
//   itemBuilder: (ctx, index) {
//     return ListTile(
//       title: Text(gitCommand[index]['title']),
//       trailing: Icon(Icons.verified_user),
//       onTap: () {
//         // Navigator.push(
//         //     context,
//         //     MaterialPageRoute(
//         //         builder: (ctx) => TodoScreen(todo[index])));
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (ctx) => TodoScreen(),
//                 settings: RouteSettings(
//                   arguments: gitCommand[index],
//                 )));
//       },
//     );
//   },
//   itemCount: gitCommand.length,
// )

// GridView.builder(
//   gridDelegate:
//       new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//   itemBuilder: (ctx, index) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (ctx) => TodoScreen(),
//                 settings: RouteSettings(arguments: gitCommand[index])));
//       },
//       child: GridTile(
//         child: Card(
//           child: Text(gitCommand[index]['title']),
//         ),
//       ),
//     );
//   },
//   itemCount: gitCommand.length,
// ),
