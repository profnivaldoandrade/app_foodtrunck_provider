import 'dart:math';

import 'package:app_foodtrunck/models/pedido.dart';
import 'package:app_foodtrunck/models/fechar_pedido.dart';
import 'package:flutter/material.dart';

class FecharPedidoItens with ChangeNotifier {
  final List<FecharPedido> _items = [];

  List<FecharPedido> get items {
    return [..._items];
  }

  int get qtdItems {
    return _items.length;
  }

  void addFecharPedido(Pedido pedido) {
    _items.insert(
      0,
      FecharPedido(
        id: Random().nextDouble().toString(),
        tolal: pedido.totalItens,
        produtos: pedido.items.values.toList(),
        date: DateTime.now(),
      ),
    );
    notifyListeners();
  }
}
