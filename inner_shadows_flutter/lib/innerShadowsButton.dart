import 'package:flutter/material.dart';

class Innershadowsbutton extends StatefulWidget {
  const Innershadowsbutton({super.key});

  @override
  State<Innershadowsbutton> createState() => _InnershadowsbuttonState();
}

class _InnershadowsbuttonState extends State<Innershadowsbutton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(child: Center(
        child: Container(
          height: 200,
          width: 200,
          child: Icon(Icons.android,size: 80,color: Colors.grey[800],),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.grey[200]!,
                Colors.grey[300]!,
                Colors.grey[400]!,
                Colors.grey[500]!,
              ],
              stops: const [.1,.3,.8,.9]
            ),
            boxShadow: [
              BoxShadow( 
                color: Colors.grey[600]!,
                offset: const Offset(4,4),
                blurRadius: 15,
                spreadRadius: 1
              ),
              const BoxShadow( 
                color: Colors.white,
                offset: Offset(-4,-4),
                blurRadius: 15,
                spreadRadius: 1
              )
            ],
          ),
        ),
      )),
    );
  }
}