import 'package:app_foodtrunck/models/pedido.dart';
import 'package:app_foodtrunck/models/produto.dart';
import 'package:app_foodtrunck/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: use_key_in_widget_constructors
class ItemProduto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final produto = Provider.of<Produto>(context, listen: false);
    final pedido = Provider.of<Pedido>(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: GridTileBar(
          title: Text(
            produto.titulo,
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.black54,
          leading: Consumer<Produto>(
            builder: (ctx, produto, _) => IconButton(
              onPressed: () {
                produto.alternarFavorito();
              },
              icon: Icon(
                  produto.eFavorito ? Icons.favorite : Icons.favorite_border),
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          trailing: IconButton(
            onPressed: () {
              pedido.addItem(produto);
            },
            icon: const Icon(Icons.list_alt),
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        child: GestureDetector(
          child: Image.network(
            produto.imgUrl,
            fit: BoxFit.cover,
          ),
          onTap: () {
            Navigator.of(context).pushNamed(
              AppRoutes.PRODUTO_DETALHES,
              arguments: produto,
            );
          },
        ),
      ),
    );
  }
}
