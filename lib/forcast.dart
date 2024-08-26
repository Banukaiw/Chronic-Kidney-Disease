import 'package:ckd/service/apiDio.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForeCast extends StatefulWidget {
  const ForeCast({super.key});

  @override
  State<ForeCast> createState() => _ForeCastState();
}

class _ForeCastState extends State<ForeCast> {
  late String _date;
  late int _sales;
  String _pred = "";
  List<dynamic> _predictionData = [];
  bool _showPredictions = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => context.goNamed('home'),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        title: Text("CHORINIC KIDNEY DISEASE"),
      ),
      backgroundColor: Colors.blueGrey.shade200,
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width - 100,
          height: MediaQuery.of(context).size.height / 4,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 10.0,
                color: Colors.black54, //134
              ),
            ],
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40.0),
              bottomRight: Radius.circular(40.0),
              topLeft: Radius.circular(40.0),
              bottomLeft: Radius.circular(40.0),
            ),
            color: Colors.blueGrey,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 250,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Date',
                        hintText: 'YYYY-MM-DD',
                        labelStyle: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 3,
                              color: Color.fromARGB(255, 255, 255, 255)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 3, color: Colors.black54),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _date = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 250,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Purchases',
                        hintText: 'Enter the Purchased Count',
                        labelStyle: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 3,
                              color: Color.fromARGB(255, 255, 255, 255)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 3, color: Colors.black54),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _sales = int.parse(value);
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      var results = await apiDio().predSales(_date, _sales);
                      print(results);
                      setState(() {
                        _predictionData = results;
                        _showPredictions = true;
                      });
                    },
                    child: Text("Predict"),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              if (_showPredictions)
                SizedBox(
                  height: 100,
                  width: 600,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _predictionData.map((item) {
                      return PredictionItem(
                        date: item['date'],
                        prediction: item['prediction'],
                      );
                    }).toList(),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class PredictionItem extends StatelessWidget {
  final String date;
  final int prediction;

  PredictionItem({required this.date, required this.prediction});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: Column(
        children: [
          Text("Date: $date"),
          Text("Prediction: $prediction"),
        ],
      ),
    );
    // return ListTile(
    //   title: Text("Date: $date"),
    //   subtitle: Text("Prediction: $prediction"),
    // );
  }
}
