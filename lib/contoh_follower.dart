import 'package:flutter/material.dart';

class ContohFollower extends StatefulWidget {
  const ContohFollower({super.key});

  @override
  State<ContohFollower> createState() => _ContohFollowerState();
}

class _ContohFollowerState extends State<ContohFollower> {
  int jumlahFollower = 0;

  menambahFollower() {
    setState(() {
      jumlahFollower++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Follower $jumlahFollower"),
          ElevatedButton(
            onPressed: () {
              menambahFollower();
            },
            child: Text("follow"),
          ),
        ],
      )),
    );
  }
}
