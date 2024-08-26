import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';

var options = BaseOptions(
  baseUrl: 'http://127.0.0.1:8000',
);

var dio = Dio(options);

class apiDio {
  Map<String, dynamic> createDateSales(String date, int sales) {
    return {"date": date, "sales": sales};
  }

  Map<String, dynamic> createDisease(
    int Age,
    String Gender,
    String AKIDiagnosis,
    double InitialCreatinine,
    double PeakCreatinine,
    int UrineOutput,
    String Proteinuria,
    String Edema,
    String Albumin_Level,
    int Change_in_Urination,
    int Swelling,
    int Metallic_Taste_in_Mouth,
    int Dizziness_Trouble_Concentrating,
    int Pain_in_Back_or_Sides,
    int Nausea_Vomiting,
  ) {
    return {
      "Age": Age,
      "Gender": Gender,
      "AKIDiagnosis": AKIDiagnosis,
      "InitialCreatinine": InitialCreatinine,
      "PeakCreatinine": PeakCreatinine,
      "UrineOutput": UrineOutput,
      "Proteinuria": Proteinuria,
      "Edema": Edema,
      "Albumin_Level": Albumin_Level,
      "Change_in_Urination": Change_in_Urination,
      "Swelling": Swelling,
      "Metallic_Taste_in_Mouth": Metallic_Taste_in_Mouth,
      "Dizziness_Trouble_Concentrating": Dizziness_Trouble_Concentrating,
      "Pain_in_Back_or_Sides": Pain_in_Back_or_Sides,
      'Nausea_Vomiting': Nausea_Vomiting,
    };
  }

  pedDisease(
    int Age,
    String Gender,
    String AKIDiagnosis,
    double InitialCreatinine,
    double PeakCreatinine,
    int UrineOutput,
    String Proteinuria,
    String Edema,
    String Albumin_Level,
    int Change_in_Urination,
    int Swelling,
    int Metallic_Taste_in_Mouth,
    int Dizziness_Trouble_Concentrating,
    int Pain_in_Back_or_Sides,
    int Nausea_Vomiting,
  ) async {
    try {
      // Create the Dart object with the desired structure
      var createDiseaseData = createDisease(
          Age,
          Gender,
          AKIDiagnosis,
          InitialCreatinine,
          PeakCreatinine,
          UrineOutput,
          Proteinuria,
          Edema,
          Albumin_Level,
          Change_in_Urination,
          Swelling,
          Metallic_Taste_in_Mouth,
          Dizziness_Trouble_Concentrating,
          Pain_in_Back_or_Sides,
          Nausea_Vomiting);

      // Convert the Dart object to JSON
      String createDiseaseDataJson = json.encode(createDiseaseData);

      // Make the Dio POST request with JSON data
      Response response = await dio.post('/predict_diseas/',
          data: createDiseaseDataJson,
          options: Options(
            contentType: Headers.jsonContentType, // Set content type to JSON
          ));

      print(response.data);
      return response.data; // Assuming your FastAPI endpoint returns a message.
    } catch (e) {
      // Handle any errors here
      print(e);
      return null; // Or return an error message
    }
  }

  Map<String, dynamic> createSuggestPlane(
    int Age,
    String Gender,
    int BMI,
    int Current_Protein_Intake,
    int Current_Sodium_Intake,
    int Current_Potassium_Intake,
    int Current_Phosphorus_Intake,
    String Other_Conditions,
    int GFR,
    int Proteinuria,
    String Preferred_Food,
  ) {
    return {
      "Age": Age,
      "Gender": Gender,
      "BMI": BMI,
      "Current_Protein_Intake": Current_Protein_Intake,
      "Current_Sodium_Intake": Current_Sodium_Intake,
      "Current_Potassium_Intake": Current_Potassium_Intake,
      "Current_Phosphorus_Intake": Current_Phosphorus_Intake,
      "Other_Conditions": Other_Conditions,
      "GFR": GFR,
      "Proteinuria": Proteinuria,
      "Preferred_Food": Preferred_Food
    };
  }

  SuggestPlane(
    int Age,
    String Gender,
    int BMI,
    int Current_Protein_Intake,
    int Current_Sodium_Intake,
    int Current_Potassium_Intake,
    int Current_Phosphorus_Intake,
    String Other_Conditions,
    int GFR,
    int Proteinuria,
    String Preferred_Food,
  ) async {
    try {
      // Create the Dart object with the desired structure
      var SuggestPlaneData = createSuggestPlane(
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

      // Convert the Dart object to JSON
      String SuggestPlaneDataJson = json.encode(SuggestPlaneData);

      // Make the Dio POST request with JSON data
      Response response = await dio.post('/Suggest_Diet_Plan/',
          data: SuggestPlaneDataJson,
          options: Options(
            contentType: Headers.jsonContentType, // Set content type to JSON
          ));

      print(response.data);
      return response.data; // Assuming your FastAPI endpoint returns a message.
    } catch (e) {
      // Handle any errors here
      print(e);
      return null; // Or return an error message
    }
  }

  predSales(String date, int sales) async {
    try {
      // Create the Dart object with the desired structure
      var dateSaleData = createDateSales(date, sales);

      // Convert the Dart object to JSON
      String dateSaleDataJson = json.encode(dateSaleData);

      // Make the Dio POST request with JSON data
      Response response = await dio.post('/forecast/',
          data: dateSaleDataJson,
          options: Options(
            contentType: Headers.jsonContentType, // Set content type to JSON
          ));

      print(response.data);
      return response.data; // Assuming your FastAPI endpoint returns a message.
    } catch (e) {
      // Handle any errors here
      print(e);
      return null; // Or return an error message
    }
  }

  Map<String, dynamic> createCkdMap(
    int age,
    double blood_pressure,
    double specific_gravity,
    double albumin,
    double sugar,
    int red_blood_cells,
    int pus_cell,
    int pus_cell_clumps,
    int bacteria,
    double blood_glucose_random,
    double blood_urea,
    double serum_creatinine,
    double sodium,
    double potassium,
    double haemoglobin,
    double packed_cell_volume,
    double white_blood_cell_count,
    double red_blood_cell_count,
    int hypertension,
    int diabetes_mellitus,
    int coronary_artery_disease,
    int appetite,
    int peda_edema,
    int aanemia,
  ) {
    return {
      "age": age,
      "blood_pressure": blood_pressure,
      "specific_gravity": specific_gravity,
      "albumin": albumin,
      "sugar": sugar,
      "red_blood_cells": red_blood_cells,
      "pus_cell": pus_cell,
      "pus_cell_clumps": pus_cell_clumps,
      "bacteria": bacteria,
      "blood_glucose_random": blood_glucose_random,
      "blood_urea": blood_urea,
      "serum_creatinine": serum_creatinine,
      "sodium": sodium,
      "potassium": potassium,
      "haemoglobin": haemoglobin,
      "packed_cell_volume": packed_cell_volume,
      "white_blood_cell_count": white_blood_cell_count,
      "red_blood_cell_count": red_blood_cell_count,
      "hypertension": hypertension,
      "diabetes_mellitus": diabetes_mellitus,
      "coronary_artery_disease": coronary_artery_disease,
      "appetite": appetite,
      "peda_edema": peda_edema,
      "aanemia": aanemia
    };
  }

  checkCkD(
      int age,
      double blood_pressure,
      double specific_gravity,
      double albumin,
      double sugar,
      int red_blood_cells,
      int pus_cell,
      int pus_cell_clumps,
      int bacteria,
      double blood_glucose_random,
      double blood_urea,
      double serum_creatinine,
      double sodium,
      double potassium,
      double haemoglobin,
      double packed_cell_volume,
      double white_blood_cell_count,
      double red_blood_cell_count,
      int hypertension,
      int diabetes_mellitus,
      int coronary_artery_disease,
      int appetite,
      int peda_edema,
      int aanemia) async {
    try {
      var ckdData = createCkdMap(
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
          aanemia);

      // Convert the Dart object to JSON
      String ckdDataJson = json.encode(ckdData);

      Response response = await dio.post('/predict_ckd/',
          data: ckdDataJson,
          options: Options(
            contentType: Headers.jsonContentType, // Set content type to JSON
          ));
      // Response response = await dio.post('/actors/', data: formDataJson);
      print(response.data);
      return response.data;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
