import 'package:flutter/material.dart';

class pannelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Colors.lightGreen,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Task and Clients row
            Row(
              children: [
                _buildDashboardItem(185, 'Clients', Colors.blue, Icons.people),
              ],
            ),
            // Servers and Projects row
            Row(
              children: [
                _buildDashboardItem(125, 'Orders placed', Colors.red, Icons.storage),
                _buildDashboardItem(262, 'Projects', Colors.orange, Icons.work),
              ],
            ),
            SizedBox(height: 20),
            // Solutions Section
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Solutions',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildSolutionChart('orders', Colors.red, 70),
                      _buildSolutionChart('new accounts', Colors.blue, 50),
                      _buildSolutionChart('new stores', Colors.orange, 55),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to create dashboard items
  Widget _buildDashboardItem(int count, String title, Color color, IconData icon) {
    return Expanded(
      child: Container(
        height: 100,
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              icon,
              size: 40,
              color: Colors.white.withOpacity(0.8),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '$count',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to create solution charts
  Widget _buildSolutionChart(String label, Color color, int percentage) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 60,
              height: 60,
              child: CircularProgressIndicator(
                value: percentage / 100,
                strokeWidth: 8,
                color: color,
              ),
            ),
            Text(
              '$percentage%',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(height: 8),
        Text(label),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: pannelPage(),
  ));
}
