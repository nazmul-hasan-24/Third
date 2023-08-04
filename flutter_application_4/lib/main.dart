import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Alert Diallog"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(25),
                            height: 200,
                            width: 230,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 15,
                                ),
                                const Text('Alert Dialog'),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Text("Do you want to delete"),
                                const SizedBox(
                                  height: 40,
                                ),
                                Row(
                                  children: [
                                    TextButton(
                                        onPressed: () {},
                                        child: const Text("Delete")),
                                    const Spacer(),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const NextPage()));
                                        },
                                        child: const Text("Cancle"))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  });
            },
            child: const Icon(
              Icons.delete,
              size: 60,
              color: Color.fromARGB(255, 165, 40, 31),
            ),
          ),
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: Center(
        child: Text("Delete Successful"),
      ),
    ));
  }
}
