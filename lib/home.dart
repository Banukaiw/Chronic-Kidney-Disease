import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        title: Text("KIDNEY1 DISEASE HEALTHCARE SYSTERM"),
      ),
      backgroundColor: Colors.blueGrey.shade200,
      body: Center(
        child: Container(
          width: 600,
          height: 600,
          child: GridView.count(
            crossAxisCount: 2,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            // shrinkWrap: true,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  context.goNamed('CkdPred');
                },
                style:
                    ElevatedButton.styleFrom(shape: BeveledRectangleBorder()),
                child: const Text("CKD"),
              ),
              ElevatedButton(
                onPressed: () {
                  context.goNamed('forcast');
                },
                style:
                    ElevatedButton.styleFrom(shape: BeveledRectangleBorder()),
                child: const Text("Forecast The Medicine"),
              ),
              ElevatedButton(
                onPressed: () {
                  context.goNamed('SuggestDPlan');
                },
                style:
                    ElevatedButton.styleFrom(shape: BeveledRectangleBorder()),
                child: const Text("Suggest Diet Plan"),
              ),
              ElevatedButton(
                onPressed: () {
                  context.goNamed('Diseases');
                },
                style:
                    ElevatedButton.styleFrom(shape: BeveledRectangleBorder()),
                child: const Text("Idenfify Diseases"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
