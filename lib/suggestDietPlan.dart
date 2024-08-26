import 'package:ckd/service/apiDio.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SuggestDietPlan extends StatefulWidget {
  const SuggestDietPlan({super.key});

  @override
  State<SuggestDietPlan> createState() => _SuggestDietPlanState();
}

class _SuggestDietPlanState extends State<SuggestDietPlan> {
  late int Age;
  late String Gender;
  late int BMI;
  late int Current_Protein_Intake;
  late int Current_Sodium_Intake;
  late int Current_Potassium_Intake;
  late int Current_Phosphorus_Intake;
  late String Other_Conditions;
  late int GFR;
  late int Proteinuria;
  late String Preferred_Food;
  String _Plan = "";

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
        title: Text("C-K-D"),
      ),
      backgroundColor: Colors.blueGrey.shade200,
      body: Center(
        child: Container(
          width: 450,
          height: MediaQuery.of(context).size.height / 1.2,
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
          child: SingleChildScrollView(
            child: Column(
              // shrinkWrap: true,
              // padding: EdgeInsets.all(15.0),
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 250,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Age',
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
                        Age = int.parse(value);
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 250,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Gender',
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
                        Gender = value;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 250,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'BMI',
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
                        BMI = int.parse(value);
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 250,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Current_Protein_Intake',
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
                        Current_Protein_Intake = int.parse(value);
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 250,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Current_Sodium_Intake',
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
                        Current_Sodium_Intake = int.parse(value);
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 250,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Current_Potassium_Intake',
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
                        Current_Potassium_Intake = int.parse(value);
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 250,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Current_Phosphorus_Intake',
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
                        Current_Phosphorus_Intake = int.parse(value);
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 250,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Other_Conditions',
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
                        Other_Conditions = value;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 250,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'GFR',
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
                        GFR = int.parse(value);
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 250,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Proteinuria',
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
                        Proteinuria = int.parse(value);
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 250,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Preferred_Food',
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
                        Preferred_Food = value;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () async {
                    var results = await apiDio().SuggestPlane(
                        Age,
                        Gender,
                        BMI,
                        Current_Protein_Intake,
                        Current_Sodium_Intake,
                        Current_Potassium_Intake,
                        Current_Phosphorus_Intake,
                        Other_Conditions,
                        GFR,
                        Proteinuria,
                        Preferred_Food);
                    print(results);
                    setState(() {
                      _Plan = results;
                    });
                  },
                  child: Text("Suggest Plan"),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  _Plan,
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
