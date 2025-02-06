import 'package:flutter/material.dart';




class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            onPressed: () {
              print("button click");
            },
            child: const Text(
              "click",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          FilledButton(
            style: FilledButton.styleFrom(
                backgroundColor: Colors.red, foregroundColor: Colors.white),
            onPressed: () {},
            child: const Text(
              "click",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.red, width: 1)),
            onPressed: () {},
            child: const Text(
              "click",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown, foregroundColor: Colors.white),
            onPressed: () {},
            child: const Text(
              "click",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
