import 'package:flutter/material.dart';

class CartaoVendas extends StatelessWidget {
  const CartaoVendas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Título da Tela'), centerTitle: true),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey.shade200,
        child: Center(
          child: Card(
            elevation: 3,
            shadowColor: Colors.black26,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              width: 194,
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 104,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE3F2FD),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.headphones,
                      size: 55,
                      color: Colors.blue.shade700,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    'Fone Bluetooth',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF212121),
                    ),
                  ),

                  const SizedBox(height: 4),

                  const Text(
                    'Som de qualidade e bateria de longa duração.',
                    style: TextStyle(
                      fontSize: 10,
                      color: Color(0xFF757575),
                      height: 1.3,
                    ),
                  ),

                  const SizedBox(height: 12),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'R\$ 199,90',
                        style: TextStyle(
                          color: Color(0xFF1976D2),
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          foregroundColor: Colors.white,
                          elevation: 0,
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          minimumSize: const Size(0, 30),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        child: const Text(
                          'Comprar',
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
