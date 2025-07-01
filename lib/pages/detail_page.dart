import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String pais;

  const DetailPage({super.key, required this.pais});

  String getEscudo() {
    switch (pais) {
      case 'Ecuador':
        return 'assets/ecuador_escudo.png';
      case 'Perú':
        return 'assets/peru_escudo.png';
      case 'Colombia':
        return 'assets/colombia_escudo.png';
      default:
        return '';
    }
  }

  String getBandera() {
    switch (pais) {
      case 'Ecuador':
        return 'assets/ecuador_bandera.png';
      case 'Perú':
        return 'assets/peru_bandera.png';
      case 'Colombia':
        return 'assets/colombia_bandera.png';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pais),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Image.asset(getEscudo(), fit: BoxFit.contain),
          ),
          Expanded(
            child: Image.asset(getBandera(), fit: BoxFit.contain),
          ),
        ],
      ),
    );
  }
}