import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final double price;
  final String image;
  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.image
    });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromRGBO(216, 240, 253, 1),
      margin: const EdgeInsets.all(20),
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title, 
              style: Theme.of(context).textTheme.titleMedium,
              ),
            const SizedBox(
              height: 5,
            ),
            Text(
              '\$$price',
              style: Theme.of(context).textTheme.titleMedium,
              ),
            const SizedBox(
              height: 5,
            ),
            Center(
              child: Image.asset(
                image,
                height: 175,
                ),
            ),
          ],
        ),
      ),
    );
  }
}