
import 'package:flutter/material.dart';

import 'recipeDetailScreen.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFFC9A417);
    const backgroundColor = Color(0xFFF3F0FF);
    const accentColor = Color(0xFFAE172F);

    return Container(
      color: backgroundColor,
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Minhas receitas favoritas',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: primaryColor,
            ),
          ),

          const SizedBox(height: 16),

          Card(
            color: Colors.white,
            child: ListTile(
              leading: const Icon(
                Icons.favorite,
                color: accentColor,
                size: 36,
              ),
              title: const Text('Exemplo de receita'),
              subtitle: const Text('Descrição da receita'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RecipeDetailScreen(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
