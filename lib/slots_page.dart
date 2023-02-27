import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:meeting_time_app/utils/custom_colors.dart';

class SlotsPage extends StatefulWidget {
  const SlotsPage({Key? key}) : super(key: key);

  @override
  State<SlotsPage> createState() => _SlotsPageState();
}

class _SlotsPageState extends State<SlotsPage> {
  final _formKey = GlobalKey<FormState>();
  final _durationController = TextEditingController();
  final _maxSlotsController = TextEditingController();
  final DateTime now = DateTime.now();
  final timeNow = DateFormat('hh:mm a').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset('assets/leading_logo.png'),
            ),
            const SizedBox(height: 20),
            Text(
              "Time Now: $timeNow",
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
