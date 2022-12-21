import 'package:flutter/material.dart';

class CaloriesFood extends StatelessWidget {
  const CaloriesFood({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> caloriesFishDetailsMap = [
      {'title': 'Fish Chart ', 'calories': 'Kcal per gram'},
      {'title': 'ahi tuna', 'calories': 120},
      {'title': 'albacore', 'calories': 128},
      {'title': 'catfish', 'calories': 95},
      {'title': 'caviar', 'calories': 250},
      {'title': 'crab', 'calories': 87},
      {'title': 'eel', 'calories': 184},
      {'title': 'flounder', 'calories': 91},
      {'title': 'grouper', 'calories': 92},
      {'title': 'herring', 'calories': 158},
      {'title': 'lobster', 'calories': 90},
      {'title': 'mussels', 'calories': 86},
      {'title': 'oysters', 'calories': 81},
      {'title': 'salmon', 'calories': 183},
      {'title': 'scallops', 'calories': 88},
      {'title': 'sea bass', 'calories': 97},
      {'title': 'shrimp', 'calories': 106},
      {'title': 'smelt', 'calories': 97},
      {'title': 'squid', 'calories': 92},
      {'title': 'tilapia', 'calories': 96},
      {'title': 'trout', 'calories': 148},
      {'title': 'whitefish', 'calories': 134},
      {'title': 'yellowfin tuna', 'calories': 108},
    ];

    List<Map<String, dynamic>> caloriesEggsDetailsMap = [
      {'title': 'Dairy & Eggs', 'calories': 'Kcal 100g/100mL'},
      {'title': 'Butter', 'calories': 716},
      {'title': 'Buttermilk (1%)', 'calories': 41},
      {'title': 'Cheddar Cheese', 'calories': 403},
      {'title': 'Cottage Cheese (1%)', 'calories': 72},
      {'title': 'Cream (heavy)', 'calories': 347},
      {'title': 'Cream Cheese', 'calories': 231},
      {'title': 'Evaporated milk', 'calories': 142},
      {'title': 'Ghee', 'calories': 899},
      {'title': 'Goats Milk', 'calories': 71},
      {'title': 'Ice Cream (vanilla)', 'calories': 207},
      {'title': 'Kefir', 'calories': 67},
      {'title': 'Ricotta Cheese', 'calories': 174},
      {'title': 'Skim Milk', 'calories': 38},
      {'title': 'Sour cream', 'calories': 214},
      {'title': 'Soy milk', 'calories': 46},
      {'title': 'Swiss Cheese', 'calories': 380},
      {'title': 'Yogurt, whole milk ', 'calories': 61},
      {'title': 'Yogurt, no fat', 'calories': 55},
      {'title': 'Whole Milk', 'calories': 62},
    ];

    List<Map<String, dynamic>> caloriesMeatDetailsMap = [
      {'title': 'Meats Calories Chart', 'calories': 'Kcal per 100g'},
      {'title': 'Bacon (pork)', 'calories': 240},
      {'title': 'Chicken Breast', 'calories': 148},
      {'title': 'Chicken Wings', 'calories': 110},
      {'title': 'Chicken Thighs', 'calories': 133},
      {'title': 'Chicken Eggs', 'calories': 155},
      {'title': 'Duck (no skin)', 'calories': 195},
      {'title': 'Escargots', 'calories': 90},
      {'title': 'Lamb', 'calories': 122},
      {'title': 'Liver', 'calories': 119},
      {'title': 'Sausage (chicken)', 'calories': 172},
      {'title': 'Sausage (turkey)', 'calories': 196},
      {'title': 'Sausage (pork)', 'calories': 318},
      {'title': 'Quail Eggs', 'calories': 158},
      {'title': 'Turkey (dark meat)', 'calories': 184},
      {'title': 'Tukey (white meat)', 'calories': 104},
      {'title': 'Venison', 'calories': 157},
    ];

    List<Map<String, dynamic>> caloriesGrainDetailsMap = [
      {'title': 'Grains Calories Chart', 'calories': 'Kcal per 100g'},
      {'title': 'adzuki beans', 'calories': 146},
      {'title': 'Amaranth (dried)', 'calories': 359},
      {'title': 'barley (dried)', 'calories': 310},
      {'title': 'beluga lentils', 'calories': 94},
      {'title': 'black beans', 'calories': 120},
      {'title': 'black eyed peas ', 'calories': 110},
      {'title': 'brown lentils ', 'calories': 105},
      {'title': 'Brown rice', 'calories': 132},
      {'title': 'Buckwheat', 'calories': 75},
      {'title': 'bulgur', 'calories': 85},
      {'title': 'Chickpeas', 'calories': 128},
      {'title': 'corn', 'calories': 54},
      {'title': 'green lentils', 'calories': 105},
      {'title': 'Green peas', 'calories': 199},
      {'title': 'green split peas', 'calories': 122},
      {'title': 'large fava beans ', 'calories': 124},
      {'title': 'millet', 'calories': 199},
      {'title': 'Oats (rolled) ', 'calories': 381},
      {'title': 'pinto beans', 'calories': 137},
      {'title': 'quinoa', 'calories': 111},
      {'title': 'red kidney beans', 'calories': 105},
      {'title': 'red split lentils ', 'calories': 100},
      {'title': 'White rice', 'calories': 131},
      {'title': 'wild rice ', 'calories': 150},
    ];

    List<Map<String, dynamic>> caloriesVegDetailsMap = [
      {'title': 'Vegetables chart', 'calories': 'Kcal per 100g'},
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

    List<Map<String, dynamic>> caloriesFruitDetailsMap = [
      {'title': 'Fruit Calories Chart', 'calories': 'Kcal per 100g'},
      {'title': 'Apple', 'calories': 37},
      {'title': 'Apricot', 'calories': 34},
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
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Calories Food"),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Fruits',
                style: TextStyle(fontSize: 22),
              ),
              const SizedBox(height: 5),
              Image.asset('assets/images/fruits.jpg'),
              const SizedBox(height: 10),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: caloriesFruitDetailsMap.length,
                  itemBuilder: (context, index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                caloriesFruitDetailsMap[index]['title'],
                                style: const TextStyle(fontSize: 18),
                              ),
                              Text(
                                caloriesFruitDetailsMap[index]['calories']
                                    .toString(),
                                style: const TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          const Divider()
                        ],
                      )),
              const SizedBox(height: 20),
              const Text('Vegitables', style: TextStyle(fontSize: 22)),
              const SizedBox(height: 5),
              Image.asset('assets/images/veg.jpg'),
              const SizedBox(height: 10),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: caloriesVegDetailsMap.length,
                  itemBuilder: (context, index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                caloriesVegDetailsMap[index]['title'],
                                style: const TextStyle(fontSize: 18),
                              ),
                              Text(
                                caloriesVegDetailsMap[index]['calories']
                                    .toString(),
                                style: const TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          const Divider()
                        ],
                      )),
              const SizedBox(height: 20),
              const Text('Grains and Pulses', style: TextStyle(fontSize: 22)),
              const SizedBox(height: 5),
              Image.asset('assets/images/grains.jpg'),
              const SizedBox(height: 10),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: caloriesGrainDetailsMap.length,
                  itemBuilder: (context, index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                caloriesGrainDetailsMap[index]['title'],
                                style: const TextStyle(fontSize: 18),
                              ),
                              Text(
                                caloriesGrainDetailsMap[index]['calories']
                                    .toString(),
                                style: const TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          const Divider()
                        ],
                      )),
              const SizedBox(height: 20),
              const Text('Dairy and Eggs', style: TextStyle(fontSize: 22)),
              const SizedBox(height: 5),
              Image.asset('assets/images/eggs.jpg'),
              const SizedBox(height: 10),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: caloriesEggsDetailsMap.length,
                  itemBuilder: (context, index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                caloriesEggsDetailsMap[index]['title'],
                                style: const TextStyle(fontSize: 18),
                              ),
                              Text(
                                caloriesEggsDetailsMap[index]['calories']
                                    .toString(),
                                style: const TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          const Divider()
                        ],
                      )),
              const SizedBox(height: 20),
              const Text('Fish', style: TextStyle(fontSize: 22)),
              const SizedBox(height: 5),
              Image.asset('assets/images/fish.jpg'),
              const SizedBox(height: 10),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: caloriesFishDetailsMap.length,
                  itemBuilder: (context, index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                caloriesFishDetailsMap[index]['title'],
                                style: const TextStyle(fontSize: 18),
                              ),
                              Text(
                                caloriesFishDetailsMap[index]['calories']
                                    .toString(),
                                style: const TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          const Divider()
                        ],
                      )),
            ],
          ),
        ),
      ),
    );
  }
}
