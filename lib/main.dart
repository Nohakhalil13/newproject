import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfileScreen(),
  ));
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Background color geded (Dark Blue-Grey)
      backgroundColor: const Color(0xFF1A1A2E), 
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.menu, color: Colors.white),
        actions: const [
          Icon(Icons.notifications_none, color: Colors.white),
          SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            
          
            const Center(
              child: CircleAvatar(
                radius: 65,
                backgroundColor: Color(0xFF4E31AA), 
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Color(0xFF321E59), 
                  child: Icon(
                    Icons.person, 
                    size: 70,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            
            const SizedBox(height: 25),
            
            
            const Text(
              'Noha Khalil',
              style: TextStyle(
                fontSize: 32, 
                fontWeight: FontWeight.bold, 
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'ndsnkfndjsfnk', 
              style: TextStyle(
                fontSize: 14, 
                color: Color.fromARGB(255, 51, 160, 160), 
                letterSpacing: 2.5,
                fontWeight: FontWeight.w600,
              ),
            ),
            
            const SizedBox(height: 25),
            
            // 3. Bio
            const Text(
              'Designing Digital Experiences', 
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),
            const Text(
              '@Noha_Khalil', 
              style: TextStyle(
                color: Color.fromARGB(255, 48, 130, 130), 
                decoration: TextDecoration.underline,
                fontSize: 16,
                height: 1.8,
              ),
            ),

            const SizedBox(height: 30),

            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildSmallIcon(Icons.alternate_email), 
                _buildSmallIcon(Icons.share),      
                _buildSmallIcon(Icons.link),        
              ],
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 40),
              child: Divider(color: Colors.white12, thickness: 1),
            ),

            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildStatColumn('2.5k', 'Followers', const Color.fromARGB(255, 50, 127, 145), Icons.people),
                _buildStatColumn('1.8k', 'Projects', const Color.fromARGB(255, 107, 48, 130), Icons.work_outline),
              ],
            ),
          ],
        ),
      ),
    );
  }

  
  Widget _buildStatColumn(String count, String label, Color color, IconData icon) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: color.withOpacity(0.4),
                // blurRadius: 10,
                // spreadRadius: 2,
              )
            ]
          ),
          child: Icon(icon, color: Colors.white, size: 30),
        ),
        const SizedBox(height: 15),
        Text(
          count, 
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        const SizedBox(height: 5),
        Text(
          label, 
          style: const TextStyle(color: Colors.white38, fontSize: 14),
        ),
      ],
    );
  }

  
  Widget _buildSmallIcon(IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Icon(icon, color: Colors.white54, size: 28),
    );
  }
}