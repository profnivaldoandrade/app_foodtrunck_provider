import 'package:app_foodtrunck/models/item_pedido.dart';

class FecharPedido{
  final String id;
  final double tolal;
  final List<ItemPedido> produtos;
  final DateTime date;

  FecharPedido({
    required this.id,
    required this.tolal,
    required this.produtos,
    required this.date
  });

}