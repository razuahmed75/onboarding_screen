// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //     SystemUiOverlayStyle(statusBarColor: Colors.deepPurple));
    return Scaffold(
        backgroundColor: Colors.deepPurple[100],
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.deepPurple,
              leading: Icon(Icons.menu),
              centerTitle: true,
              expandedHeight: 240,
              floating: true,
              pinned: true,
              // systemOverlayStyle:
              //     SystemUiOverlayStyle(statusBarColor: Colors.grey[900]),
              flexibleSpace: FlexibleSpaceBar(
                title: Text("A L A R M C L O C K"),
                centerTitle: true,
                background: Image.asset(
                  'assets/sliverBg.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 400,
                    color: Colors.deepPurple[300],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 400,
                    color: Colors.deepPurple[300],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 400,
                    color: Colors.deepPurple[300],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
