import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TicTacToeScreen(),
  ));
}

class TicTacToeScreen extends StatefulWidget {
  const TicTacToeScreen({super.key});

  @override
  State<TicTacToeScreen> createState() => _TicTacToeScreenState();
}

class _TicTacToeScreenState extends State<TicTacToeScreen> {
  // Score Variables
  int scoreO = 1;
  int scoreX = 0;

  List<String> displayExOh = ['', '', '', '', '', '', '', '', ''];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E), 
      body: Column(
        children: [
          const SizedBox(height: 60),
          
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildScoreColumn('Player O', scoreO.toString()),
              const SizedBox(width: 50),
              _buildScoreColumn('Player X', scoreX.toString()),
            ],
          ),

          const SizedBox(height: 40),

         
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: GridView.builder(
                itemCount: 9,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // 3 Columns
                ),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade700), 
                      ),
                      child: Center(
                        child: Text(
                          displayExOh[index],
                          style: const TextStyle(color: Colors.white, fontSize: 40),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildScoreColumn(String player, String score) {
    return Column(
      children: [
        Text(
          player,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          score,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}