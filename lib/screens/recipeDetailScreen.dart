import 'package:flutter/material.dart';

class RecipeDetailScreen extends StatelessWidget {
  const RecipeDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFFC9A417);
    const backgroundColor = Color(0xFFF3F0FF);
    const accentColor = Color(0xFFAE172F);

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text('Detalhes da receita'),
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              Icons.restaurant,
              size: 80,
              color: accentColor,
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            'Nome da receita',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: primaryColor,
            ),
          ),

          const SizedBox(height: 16),

          const Text(
            'Descrição da receita',
            style: TextStyle(fontSize: 16),
          ),

          const SizedBox(height: 24),

          const Text(
            'Ingredientes',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: primaryColor,
            ),
          ),

          const SizedBox(height: 8),

          const Text(
            '• Ingrediente 1\n'
                '• Ingrediente 2\n'
                '• Ingrediente 3',
            style: TextStyle(fontSize: 16),
          ),

          const SizedBox(height: 24),

          const Text(
            'Modo de preparo',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: primaryColor,
            ),
          ),

          const SizedBox(height: 8),

          const Text(
            'Modo de preparo da receita.',
            style: TextStyle(fontSize: 16),
          ),

          const SizedBox(height: 24),

          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            style: ElevatedButton.styleFrom(
              backgroundColor: accentColor,
              foregroundColor: Colors.white,
            ),
            child: const Text('Voltar'),
          ),
        ],
      ),
    );
  }
}
