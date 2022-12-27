import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => context.go('/'),
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(),
            child: Padding(
              padding: const EdgeInsets.all(45.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                      "FirstName " + "LastName"),
                  Icon(Icons.account_circle),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text("1"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("2"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("3"),
              )
            ],
          )
        ],
      ),
    );
  }
}
