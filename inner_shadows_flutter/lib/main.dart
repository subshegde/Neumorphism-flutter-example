import 'package:flutter/material.dart';
import 'package:inner_shadows_flutter/innerShadowsButton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      
      home: Innershadowsbutton()
    );
  }
}
