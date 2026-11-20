import 'package:flutter/material.dart';

class RecipeScreen extends StatefulWidget {
  const RecipeScreen({super.key});

  @override
  State<RecipeScreen> createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {

  String? _errorMessage;
  String? _searchedTerm;

  final TextEditingController _searchController =
  TextEditingController();

  void _onInfoButtonPressed() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Sobre o app'),
        content: const Text(
          'Esta é uma tela de testes Flutter, '
              'menu lateral e botões interativos.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Fechar'),
          ),
        ],
      ),
    );
  }

  void _searchRecipe(){
    final String searchText = _searchController.text.trim();
    if(searchText.isEmpty){
      setState(() {
        _errorMessage = 'Digite o nome da receita antes de pesquisar.';
        _searchedTerm = null;
      });
    } else{
      setState(() {
        _errorMessage = null;
        _searchedTerm = searchText;
      });
    }
  }

  @override
  void dispose(){
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFFC9A417);
    const backgroundColor = Color(0xFFF3F0FF);
    const accentColor = Color(0xFFAE172F);

    return Container(
      color: backgroundColor,
      child: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.restaurant_menu,
                size: 64,
                color: accentColor,
              ),

              const SizedBox(height: 16),

              Text(
                'Encontre sua receita',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),

              TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  labelText: 'Nome da receita',
                  hintText: 'Ex: Bolo de chocolate',
                  errorText: _errorMessage,
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.text,
              ),

              if (_searchedTerm != null)
                Text('Receita pesquisada: $_searchedTerm'),

              const SizedBox(height: 16),

              ElevatedButton.icon(
                onPressed: _searchRecipe,
                icon: const Icon(Icons.search),
                label: const Text('Pesquisar receitas'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 14,
                  ),
                ),
              ),

              const SizedBox(height: 16),

              OutlinedButton.icon(
                onPressed: _onInfoButtonPressed,
                icon: const Icon(Icons.info_outline),
                label: const Text('Sobre o app'),
                style: OutlinedButton.styleFrom(
                  foregroundColor: accentColor,
                  side: const BorderSide(color: accentColor),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}