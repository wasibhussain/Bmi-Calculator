import 'package:flutter/material.dart';

class DiseaseItemsCard extends StatelessWidget {
  final String title;
  final String subtitle;
  DiseaseItemsCard({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        color: Color.fromRGBO(255, 255, 255, 1),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              // Text(
              //   subtitle,
              //   style: const TextStyle(color: Colors.grey),
              // ),
              const SizedBox(height: 10),
              const Text(
                'View Details',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
