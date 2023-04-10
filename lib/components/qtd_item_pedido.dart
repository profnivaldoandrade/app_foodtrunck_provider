import 'package:flutter/material.dart';

class QtdItemCarrinho extends StatelessWidget {
  final Widget child;
  final String valor;
  final Color? cor;

  const QtdItemCarrinho({
    required this.child,
    required this.valor,
    this.cor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
        Positioned(
          right: 8,
          top: 8,
          child: Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: cor ?? Theme.of(context).colorScheme.secondary,
            ),
            constraints: const BoxConstraints(
              minHeight: 16,
              minWidth: 16,
            ),
            child: Text(
              valor,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 10),
            ),
          ),
        ),
      ],
    );
  }
}
