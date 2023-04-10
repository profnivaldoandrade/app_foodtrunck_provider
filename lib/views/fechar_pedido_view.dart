import 'package:app_foodtrunck/components/app_drower.dart';
import 'package:app_foodtrunck/components/fechar_pedidos_itens.dart';
import 'package:app_foodtrunck/models/fechar_pedidos_itens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FecharPedidoView extends StatelessWidget {
  const FecharPedidoView({super.key});

  @override
  Widget build(BuildContext context) {
    final FecharPedidoItens pedidos = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('MEUS PEDIDOS'),
      ),
      drawer: const AppDrawer(),
      body: ListView.builder(
        itemCount: pedidos.qtdItems,
        itemBuilder: (context, i) =>
            FecharPedidoItensWidget(pedido: pedidos.items[i]),
      ),
    );
  }
}
