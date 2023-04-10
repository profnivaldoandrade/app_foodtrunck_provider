import 'package:app_foodtrunck/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:app_foodtrunck/models/produto.dart';

class ItemProduto extends StatelessWidget {
  final Produto produto;

  const ItemProduto({
    required this.produto,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          title: Text(
            produto.titulo,
            textAlign: TextAlign.center,
          ),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite),
            color: Theme.of(context).colorScheme.secondary,
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.list_alt_rounded),
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        child: GestureDetector(
          child: Image.network(produto.imgUrl),
          onTap: () {
            Navigator.of(context).pushNamed(
              AppRoutes.PRODUTO_DETALHES,
              arguments: produto
            );
          },
        ),
      ),
    );
  }
}
