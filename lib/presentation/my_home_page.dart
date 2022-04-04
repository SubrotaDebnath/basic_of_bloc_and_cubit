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
        child: SizedBox(
          height: MediaQuery.of(context).size.height -
              MediaQuery.of(context).padding.top,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Cubit Section
              const TextWidget(
                label: 'Cubit counter value:',
              ),

              const TextWidget(
                label: '0',//Cubit Counter Value
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonWidget(
                    icon: Icons.remove_circle_outline,
                    onTap: () {},//Cubit value decrement
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  ButtonWidget(
                    icon: Icons.add_circle_outline,
                    onTap: () {},//Cubit Value increment
                  ),
                ],
              ),
              const SizedBox(
                height: 72,
              ),
              //BLoC section
              const TextWidget(
                label: 'BLoC counter value:',
              ),
              const TextWidget(
                label: '0',//BLoC counter Value
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonWidget(
                    icon: Icons.remove_circle_outline,
                    onTap: () {},//BLoC value decrement
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  ButtonWidget(
                    icon: Icons.add_circle_outline,
                    onTap: () {},//BLoC Value increment
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String label;

  const TextWidget({
    required this.label,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  final IconData icon;
  final onTap;

  const ButtonWidget({
    required this.icon,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        icon,
        size: 48,
        color: Colors.orange,
      ),
    );
  }
}
