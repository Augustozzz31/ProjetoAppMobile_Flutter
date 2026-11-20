import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  final Function(int) onNavigate;

  const AppDrawer({
    super.key,
    required this.onNavigate,
  });

  void _showInfo(BuildContext context, String title, String message) {
    Navigator.pop(context);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Fechar'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFFC9A417);
    const accentColor = Color(0xFFAE172F);

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [primaryColor, accentColor],
              ),
            ),
            child: const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Receitas',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          ListTile(
            leading: const Icon(Icons.home, color: primaryColor),
            title: const Text('Início'),
            onTap: () => onNavigate(0),
          ),

          ListTile(
            leading: const Icon(
              Icons.restaurant_menu,
              color: primaryColor,
            ),
            title: const Text('Receitas'),
            onTap: () => onNavigate(1),
          ),

          ListTile(
            leading: const Icon(Icons.favorite, color: primaryColor),
            title: const Text('Favoritos'),
            onTap: () => onNavigate(2),
          ),

          ListTile(
            leading: const Icon(Icons.info_outline, color: primaryColor),
            title: const Text('Sobre o aplicativo'),
            onTap: () => _showInfo(
              context,
              'Sobre o aplicativo',
              'Aplicativo desenvolvido para facilitar a busca e '
                  'organização de receitas.',
            ),
          ),

          ListTile(
            leading: const Icon(Icons.help_outline, color: primaryColor),
            title: const Text('Ajuda'),
            onTap: () => _showInfo(
              context,
              'Ajuda',
              'Utilize a tela inicial para pesquisar receitas, '
                  'a aba Receitas para visualizar a listagem de receitas e '
                  'Favoritos para acessar suas receitas favoritas.',
            ),
          ),

          ListTile(
            leading: const Icon(Icons.share, color: primaryColor),
            title: const Text('Compartilhar aplicativo'),
            onTap: () => _showInfo(
              context,
              'Compartilhar',
              'Você está compartilhando ',
            ),
          ),
        ],
      ),
    );
  }
}
