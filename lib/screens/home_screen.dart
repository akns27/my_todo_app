import 'package:flutter/material.dart';
import 'package:my_todo/screens/test_screen.dart';
import 'package:my_todo/utils/test_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFFF3E5F5), Color(0xFFFCE4EC)],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        children: [
                          const Text(
                            '심리 테스트',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 24),
                          _buildTestButton(
                            context,
                            'MBTI 검증',
                            Icons.psychology,
                            Colors.purple,
                            'mbti',
                          ),
                          const SizedBox(height: 12),
                          _buildTestButton(
                            context,
                            '연애 감성 취향',
                            Icons.favorite,
                            Colors.pink,
                            'test2',
                          ),
                          const SizedBox(height: 12),
                          _buildTestButton(
                            context,
                            '반려동물 취향',
                            Icons.pets,
                            Colors.orange,
                            'test1',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTestButton(BuildContext context, String title, IconData icon,
      Color color, String testType) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TestScreen(testType: testType),
            ),
          );
        },
        icon: Icon(icon, color: color),
        label: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 16),
            ),
            const Icon(Icons.arrow_forward),
          ],
        ),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 16,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
