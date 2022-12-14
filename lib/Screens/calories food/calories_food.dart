import 'package:flutter/material.dart';

class CaloriesFood extends StatelessWidget {
  const CaloriesFood({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> caloriesVegDetailsMap = [
      {'title': 'Acorn squash ', 'calories': 40},
      {'title': 'Artichoke ', 'calories': 41},
      {'title': 'Asparagus', 'calories': 29},
      {'title': 'Beetroot ', 'calories': 42},
      {'title': 'Broccoli ', 'calories': 35},
      {'title': 'Brussels Sprout ', 'calories': 51},
      {'title': 'Butternut squash', 'calories': 36},
      {'title': 'Cabbage ', 'calories': 27},
      {'title': 'Carrot ', 'calories': 10},
      {'title': 'Cauliflower ', 'calories': 30},
      {'title': 'Celery ', 'calories': 8},
      {'title': 'Chicory ', 'calories': 11},
      {'title': 'Corn', 'calories': 54},
      {'title': 'Edamame ', 'calories': 140},
      {'title': 'Green beans ', 'calories': 25},
      {'title': 'Iceberg lettuce', 'calories': 10},
      {'title': 'Kale ', 'calories': 30},
      {'title': 'Leek ', 'calories': 20},
      {'title': 'Mushroom', 'calories': 8},
      {'title': 'Onion', 'calories': 43},
      {'title': 'Peas ', 'calories': 70},
      {'title': 'Peppers (Red)', 'calories': 21},
      {'title': 'Potato ', 'calories': 97},
      {'title': 'Pumpkin ', 'calories': 13},
      {'title': 'Radish ', 'calories': 33},
      {'title': 'Romaine Lettuce ', 'calories': 15},
      {'title': 'Spinach ', 'calories': 24},
      {'title': 'Bean Sprouts ', 'calories': 30},
      {'title': 'Turnips', 'calories': 23},
      {'title': 'Yam', 'calories': 153},
      {'title': 'Zucchini / Courgette', 'calories': 10},
    ];

    List<Map<String, dynamic>> caloriesFoodDetailsMap = [
      // {'itemTitle': 'Fruits', 'imageUrl': 'assets/images/fruits.jpg'},
      {
        'title': 'Apple',
        'calories': 37,
        // 'itemTitle': 'Fruits',
        // 'imageUrl': 'assets/images/fruits.jpg'
      },
      {
        'title': 'Apricot',
        'calories': 34,
      },
      {'title': 'Avocado', 'calories': 134},
      {'title': 'Banana', 'calories': 51},
      {'title': 'Blackcurrant', 'calories': 24},
      {'title': 'Blackberries', 'calories': 21},
      {'title': 'Cherrie', 'calories': 36},
      {'title': 'Clementine', 'calories': 39},
      {'title': 'Coconut (Fresh)', 'calories': 351},
      {'title': 'Cranberries', 'calories': 15},
      {'title': 'Cucumber', 'calories': 15},
      {'title': 'Dates (Dried)', 'calories': 227},
      {'title': 'Figs (Fresh)', 'calories': 209},
      {'title': 'Grapefruit', 'calories': 25},
      {'title': 'Kiwi', 'calories': 42},
      {'title': 'Lemon', 'calories': 15},
      {'title': 'Lime', 'calories': 9},
      {'title': 'Lychee', 'calories': 36},
      {'title': 'Mango', 'calories': 39},
      //{'itemTitle': 'Vegitables', 'imageUrl': 'assets/images/veg.jpg'},
      // {'title': 'Acorn squash ', 'calories': 40},
      // {'title': 'Artichoke ', 'calories': 41},
      // {'title': 'Asparagus', 'calories': 29},
      // {'title': 'Beetroot ', 'calories': 42},
      // {'title': 'Broccoli ', 'calories': 35},
      // {'title': 'Brussels Sprout ', 'calories': 51},
      // {'title': 'Butternut squash', 'calories': 36},
      // {'title': 'Cabbage ', 'calories': 27},
      // {'title': 'Carrot ', 'calories': 10},
      // {'title': 'Cauliflower ', 'calories': 30},
      // {'title': 'Celery ', 'calories': 8},
      // {'title': 'Chicory ', 'calories': 11},
      // {'title': 'Corn', 'calories': 54},
      // {'title': 'Edamame ', 'calories': 140},
      // {'title': 'Green beans ', 'calories': 25},
      // {'title': 'Iceberg lettuce', 'calories': 10},
      // {'title': 'Kale ', 'calories': 30},
      // {'title': 'Leek ', 'calories': 20},
      // {'title': 'Mushroom', 'calories': 8},
      // {'title': 'Onion', 'calories': 43},
      // {'title': 'Peas ', 'calories': 70},
      // {'title': 'Peppers (Red)', 'calories': 21},
      // {'title': 'Potato ', 'calories': 97},
      // {'title': 'Pumpkin ', 'calories': 13},
      // {'title': 'Radish ', 'calories': 33},
      // {'title': 'Romaine Lettuce ', 'calories': 15},
      // {'title': 'Spinach ', 'calories': 24},
      // {'title': 'Bean Sprouts ', 'calories': 30},
      // {'title': 'Turnips', 'calories': 23},
      // {'title': 'Yam', 'calories': 153},
      // {'title': 'Zucchini / Courgette', 'calories': 10},
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Calories Food"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Fruits'),
            Image.asset('assets/images/fruits.jpg'),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                  itemCount: caloriesFoodDetailsMap.length,
                  itemBuilder: (context, index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                caloriesFoodDetailsMap[index]['title'],
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                caloriesFoodDetailsMap[index]['calories']
                                    .toString(),
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      )),
            ),
            Divider(),
               Text('Vegitables'),
                          Image.asset( 'assets/images/veg.jpg'),
            Expanded(
              child: ListView.builder(
                  itemCount: caloriesVegDetailsMap.length,
                  itemBuilder: (context, index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Text('Vegitables'),
                          // Image.asset('assets/images/veg.jpg'),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                caloriesVegDetailsMap[index]['title'],
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                caloriesVegDetailsMap[index]['calories']
                                    .toString(),
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
