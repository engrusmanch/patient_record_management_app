// import 'package:cunning_document_scanner/cunning_document_scanner.dart';
import 'package:flutter/material.dart';
import 'package:patientrecordmanagementapp/core/enums.dart';
import 'package:patientrecordmanagementapp/core/widgets/record_card.dart';
import 'package:patientrecordmanagementapp/domain/entity/patient_record.dart';
import 'package:patientrecordmanagementapp/presentation/add_edit_record.dart';
import 'dart:io';

import 'package:patientrecordmanagementapp/presentation/from_gallery_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> _pictures = [];

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {}
  @override
  Widget build(BuildContext context) {
    List<PatientRecord> records = [
      PatientRecord(
        date: DateTime.now(),
        patientName: "Usman",
        title: "Nausea",
        disease: "Fever",
        doctorName: "Faizan",
        hospitalName: "Quaide Azam Hospital",
      ),
      PatientRecord(
        date: DateTime.now(),
        patientName: "Usman",
        title: "Nausea",
        disease: "Fever",
        doctorName: "Faizan",
        hospitalName: "Quaide Azam Hospital",
      ),
      PatientRecord(
        date: DateTime.now(),
        patientName: "Usman",
        title: "Nausea",
        disease: "Fever",
        doctorName: "Faizan",
        hospitalName: "Quaide Azam Hospital",
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Patient Records'),
        actions: [
          IconButton(
            onPressed: () {
              // Implement logout functionality
            },
            icon: Icon(Icons.filter_alt),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildSearchBar(),
            SizedBox(height: 16),
            Text(
              'Your Records',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (_, index) =>SizedBox(height: 12) ,
                itemCount: records.length, // Replace with actual record count
                itemBuilder: (context, index) {
                  // Replace this with your record item widget
                  return RecordCard(
                    record: records[index],
                    index: index,
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push<void>(
          context,
          MaterialPageRoute(
            builder: (context) =>
                const AddEditPatientRecordPage(opType: OperationType.add),
          ),
        ),
        child: Icon(Icons.add),
      ),
    );
  }

  void onPressed() async {
    List<String> pictures;
    try {
      // pictures = await CunningDocumentScanner.getPictures() ?? [];
      if (!mounted) return;
      setState(() {
        // _pictures = pictures;
      });
    } catch (exception) {
      // Handle exception here
    }
  }

  Widget _buildSearchBar() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search records...',
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onChanged: (value) {
        // Implement search functionality
      },
    );
  }
}
