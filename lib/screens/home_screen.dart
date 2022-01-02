import 'package:dev_stack_firebase/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text ('Home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text ('Home Screen'),
          Center(
            child: ElevatedButton(
              child: const Text('Logout'),
              onPressed: () async {
                await authService.signOut();
              },
            ),
          )
        ],
      ),
    );
  }
}
