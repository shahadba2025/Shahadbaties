import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SebhaApp(),
    );
  }
}

class SebhaApp extends StatefulWidget {
  const SebhaApp({super.key});

  @override
  State<SebhaApp> createState() => _SebhaAppState();
}

class _SebhaAppState extends State<SebhaApp> {
  int count = 0;
  String currentText = "";

  void _updateText(String newText) {
    setState(() {
      currentText = newText;
      count++;
    });
  }

  Widget _buildDhikrButton(String label) {
    return ElevatedButton(
      onPressed: () => _updateText(label),
      child: Text(label),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("مسبحة"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              currentText,
              style: const TextStyle(fontSize: 34),
            ),
            const SizedBox(height: 25),
            Text(
              "$count",
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            Wrap(
              spacing: 15,
              children: [
                _buildDhikrButton("سبحان الله"),
                _buildDhikrButton("الحمدلله"),
                _buildDhikrButton("الله أكبر"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}