import 'package:flutter/material.dart';
import 'package:flutter_provider_counter/providers/user_provider.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              context.watch<UserProvider>().name,
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              onPressed: () {
                context
                    .read<UserProvider>()
                    .changeName(newName: nameController.text);
                FocusManager.instance.primaryFocus?.unfocus();
                nameController.clear();
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
