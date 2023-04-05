import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.from(
        colorScheme: const ColorScheme.dark(),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello. It's a new project"),
        ),
        body: Center(
          child: Text(
            "There is a Biba's & Bobas' project",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
        ),
      ),
    );
  }
}
