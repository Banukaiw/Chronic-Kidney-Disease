import 'package:flutter/material.dart';
import 'package:ckd/service/apiDio.dart';
// import 'package:file_picker/file_picker.dart';
import 'dart:typed_data';

import 'package:go_router/go_router.dart';

class CkdPred extends StatefulWidget {
  const CkdPred({super.key});

  @override
  State<CkdPred> createState() => _CkdPredState();
}

class _CkdPredState extends State<CkdPred> {
  late String name;

  late int age;
  late double blood_pressure;
  late double specific_gravity;
  late double albumin;
  late double sugar;
  late int red_blood_cells;
  late int pus_cell;
  late int pus_cell_clumps;
  late int bacteria;
  late double blood_glucose_random;
  late double blood_urea;
  late double serum_creatinine;
  late double sodium;
  late double potassium;
  late double haemoglobin;
  late double packed_cell_volume;
  late double white_blood_cell_count;
  late double red_blood_cell_count;
  late int hypertension;
  late int diabetes_mellitus;
  late int coronary_artery_disease;
  late int appetite;
  late int peda_edema;
  late int aanemia;
  String _hasCkd = "";

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
                // Container(
                //   width: 750,
                //   height: 100,
                //   decoration: const BoxDecoration(
                //     boxShadow: [
                //       BoxShadow(
                //         blurRadius: 10.0,
                //         color: Colors.black54, //134
                //       ),
                //     ],
                //     borderRadius: BorderRadius.only(
                //       topRight: Radius.circular(40.0),
                //       bottomRight: Radius.circular(40.0),
                //       topLeft: Radius.circular(40.0),
                //       bottomLeft: Radius.circular(40.0),
                //     ),
                //     color: Colors.blueGrey,
                //   ),
                // ),
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
                        age = int.parse(value);
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
                      labelText: 'Blood Pressure',
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
                        blood_pressure = double.parse(value);
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
                      labelText: 'Specific gravity',
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
                        specific_gravity = double.parse(value);
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
                      labelText: 'Albumin',
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
                        albumin = double.parse(value);
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
                      labelText: 'Sugar',
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
                        sugar = double.parse(value);
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
                      labelText: 'red_blood_cells',
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
                        red_blood_cells = int.parse(value);
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
                      labelText: 'pus_cell',
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
                        pus_cell = int.parse(value);
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
                      labelText: 'pus_cell_clumps',
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
                        pus_cell_clumps = int.parse(value);
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
                      labelText: 'bacteria',
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
                        bacteria = int.parse(value);
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
                      labelText: 'blood_glucose_random',
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
                        blood_glucose_random = double.parse(value);
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
                      labelText: 'blood_urea',
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
                        blood_urea = double.parse(value);
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
                      labelText: 'serum_creatinine',
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
                        serum_creatinine = double.parse(value);
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
                      labelText: 'sodium',
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
                        sodium = double.parse(value);
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
                      labelText: 'potassium',
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
                        potassium = double.parse(value);
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
                      labelText: 'haemoglobin',
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
                        haemoglobin = double.parse(value);
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
                      labelText: 'packed_cell_volume',
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
                        packed_cell_volume = double.parse(value);
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
                      labelText: 'white_blood_cell_count',
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
                        white_blood_cell_count = double.parse(value);
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
                      labelText: 'red_blood_cell_count',
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
                        red_blood_cell_count = double.parse(value);
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
                      labelText: 'hypertension',
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
                        hypertension = int.parse(value);
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
                      labelText: 'diabetes_mellitus',
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
                        diabetes_mellitus = int.parse(value);
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
                      labelText: 'coronary_artery_disease',
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
                        coronary_artery_disease = int.parse(value);
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
                      labelText: 'appetite',
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
                        appetite = int.parse(value);
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
                      labelText: 'peda_edema',
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
                        peda_edema = int.parse(value);
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
                      labelText: 'aanemia',
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
                        aanemia = int.parse(value);
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () async {
                      var response = await apiDio().checkCkD(
                        age,
                        blood_pressure,
                        specific_gravity,
                        albumin,
                        sugar,
                        red_blood_cells,
                        pus_cell,
                        pus_cell_clumps,
                        bacteria,
                        blood_glucose_random,
                        blood_urea,
                        serum_creatinine,
                        sodium,
                        potassium,
                        haemoglobin,
                        packed_cell_volume,
                        white_blood_cell_count,
                        red_blood_cell_count,
                        hypertension,
                        diabetes_mellitus,
                        coronary_artery_disease,
                        appetite,
                        peda_edema,
                        aanemia,
                      );
                      print(response);
                      if (response != 1) {
                        setState(() {
                          _hasCkd = "Has Ckd";
                        });
                      } else {
                        setState(() {
                          _hasCkd = "No Ckd";
                        });
                      }
                      // await apiDio().addActor(name, Talents, movie, character,
                      //     emotion_feedback, interview_feedback, context);
                    },
                    child: Text("Test")),
                // ElevatedButton(
                //   child: Text('UPLOAD FILE'),
                //   onPressed: () async {
                //     var picked = await FilePicker.platform.pickFiles(
                //       type: FileType.video, // Allow only video files
                //     );
                //     if (picked != null) {
                //       Uint8List? fileBytes = picked.files.first.bytes;
                //       if (fileBytes != null) {
                //         setState(() {
                //           videoBytes = fileBytes;
                //         });
                //         apiDio().addActor(name, Talents, movie, character,
                //             emotion_feedback, interview_feedback, context);
                //         apiDio().addRating(
                //             name, emotion_feedback, interview_feedback, context);
                //         apiDio().uploadVideo(videoBytes!, name);
                //       } else {
                //         print('File bytes are null');
                //       }
                //     }
                //   },
                // ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  _hasCkd,
                  style: TextStyle(color: Colors.white, fontSize: 30),
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
