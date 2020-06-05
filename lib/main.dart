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
      backgroundColor: Colors.black45,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            key: GlobalKey(
              debugLabel: 'appBar12',
            ),
            backgroundColor: Colors.black,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.info),
                onPressed: () {
                  return showAboutDialog(
                      context: context,
                      applicationIcon: Icon(Icons.wb_sunny),
                      applicationLegalese: 'No One can copy the source code',
                      applicationVersion: '1.0v',
                      children: [
                        CircleAvatar(
                          child: Icon(Icons.whatshot),
                        )
                      ]);
                },
                iconSize: 40,
              )
            ],
            title: Text(
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
                margin: EdgeInsets.only(
                  bottom: 30,
                ),
                padding: EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      'What is Git?',
                      style: TextStyle(
                        fontSize: 25,
                        letterSpacing: 1,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Git is a version control system that keeps track of your current work, storing the modifications in a central repository, and even retireve your previous work using Git tool.',
                      style: TextStyle(
                        height: 1.4,
                        wordSpacing: 2,
                        letterSpacing: 0.3,
                        color: Colors.white,
                      ),
                    ),
                    const Divider(
                      thickness: 2,
                      color: Colors.blue,
                    ),
                    Text(
                      'What is Github?',
                      style: TextStyle(
                        fontSize: 25,
                        letterSpacing: 1,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Github is a hub or platform where you can store your programs source code, collaborate with other programmers, and through git tool you can keeps track of your current work.',
                      style: TextStyle(
                        height: 1.4,
                        wordSpacing: 2,
                        letterSpacing: 0.3,
                        color: Colors.white,
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
                        color: Colors.yellow[700],
                        margin: EdgeInsets.all(10.0),
                        elevation: 0,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Center(
                            child: Text(
                              gitCommand[index]['title'],
                              style: TextStyle(
                                height: 1.4,
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
