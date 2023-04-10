import 'package:app_foodtrunck/models/produto.dart';
import 'package:flutter/material.dart';

class ProdutoDetalhesView extends StatelessWidget {
  
  const ProdutoDetalhesView({super.key});

  @override
  Widget build(BuildContext context) {
    final Produto produto = ModalRoute.of(context)!.settings.arguments as Produto;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(produto.titulo),
      ),
    );
  }
}