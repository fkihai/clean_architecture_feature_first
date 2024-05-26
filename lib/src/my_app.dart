import 'package:flutter/material.dart';

import 'feature/profile/presentation/page/profile_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Clean Architecture Flutter Feature First",
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}
