import 'package:flutter/material.dart';
import 'package:flutter_provider_counter/providers/user_provider.dart';
import 'package:provider/provider.dart';

import 'utils/colors.dart';
import 'widgets/nav_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Provider',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: mobileBackgroundColor,
        ),
        home: const NavLayout(),
      ),
    );
  }
}
