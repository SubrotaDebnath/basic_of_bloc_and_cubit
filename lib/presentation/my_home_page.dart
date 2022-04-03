import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                //Title
                //Count Text
                //Increment and decrement Button
                Row(children: const [],)
              ],
            ),
            ListView(
              shrinkWrap: true,
              children: [
                //Title
                //Count Text
                //Increment and decrement Button
                Row(children: const [],)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
