import 'package:flutter/material.dart';

class diteItemsCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  diteItemsCard({required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              child: Image.asset(
                imageUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 20,
              right: 10,
              child: Container(
                width: 300,
                color: Colors.black54,
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: Text(
                  title,
                  style: TextStyle(fontSize: 22, color: Colors.white),
                  softWrap: true,
                  overflow: TextOverflow.fade,
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        )
        // Padding(
        //   padding: EdgeInsets.all(20),
        //   // child: Row(
        //   //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   //   children: [
        //   //     Row(
        //   //       children: [
        //   //         Icon(Icons.schedule_outlined),
        //   //         SizedBox(width: 6),
        //   //         Text('30 min')
        //   //       ],
        //   //     ),
        //   //     Row(
        //   //       children: [
        //   //         Icon(Icons.work),
        //   //         SizedBox(width: 6),
        //   //         Text("Normal"),
        //   //       ],
        //   //     ),
        //   //     Row(
        //   //       children: [
        //   //         Icon(Icons.attach_money_outlined),
        //   //         SizedBox(width: 6),
        //   //         Text("Affordable")
        //   //       ],
        //   //     ),
        //   //   ],
        //   // ),
        // )
      ],
    );
  }
}
