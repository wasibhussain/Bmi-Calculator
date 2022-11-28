import 'package:bmi/Screens/diets/item_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../widgets/diet_item_widget.dart';

class DietPlan30Days extends StatelessWidget {
  DietPlan30Days({Key? key}) : super(key: key);

  List<Map<String, dynamic>> itemDetailsMap = [
    {
      "id": 1,
      "imageUrl": "assets/images/day1.jpg",
      "dayNumber": 'Day 1',
      'breakfast':
          'Peanut Butter on Wholegrain Toast: Toasted wholegrain bread+ 2 tbsp peanut butter. Drizzle with honey to taste. Serve with 1 hot chocolate, made with milk + 1 serve of fruit (eg. 1 medium pear or orange).',
      'lunch':
          "Chicken and Pasta Salad: Cooked chicken + pasta + 1 cup leafy green vegetables (eg. spinach, rocket) + tomato + avocado + crumbled feta cheese + olive oil/vinegar dressing.",
      'dinner':
          "Lamb Chops and Vegetables: Lamb chop, trimmed & shallow fried in olive oil. Serve with sweet potato mash made with milk and olive oil + 2 cups cooked vegetables.",
      'snacks': "A handful of mixed nuts and/or seeds."
    },
    {
      "id": 2,
      "imageUrl": "assets/images/day2.jpg",
      "dayNumber": 'Day 2',
      'breakfast':
          'Chia Porridge with Fruit: 2 tbsp chia seeds + rolled oats + 1.5 cup full cream milk + 1 serve of fruit (eg. 1 medium banana or 6 dried prunes).',
      'lunch':
          "Egg, Cheese and Salad Wrap: 2 boiled & mashed eggs + 2 cheese slices + avocado + 1 cup salad vegetables (eg. lettuce, cucumber, carrot, capsicum) rolled up in tortilla bread (make 2 wraps) + 1 cup fruit juice.",
      'dinner':
          "Baked Salmon, Cous Cous and Vegetables: Oven baked salmon fillet, sprinkled with sesame oil and sesame seeds + wholemeal cous cous + 2 cups cooked vegetables. Serve with hommus.",
      'snacks':
          "A handful of mixed nuts and/or seeds. Fruit toast with butter and/or jam.",
    },
    {
      "id": 3,
      "imageUrl": "assets/images/day3.jpg",
      "dayNumber": 'Day 3',
      'breakfast':
          'Sweet Potato Spanish Omelette (1 serve): Serve with 1 cafe latte or hot chocolate made with full cream milk.',
      'lunch':
          "Lentil, Vegetables and Barley Soup: Lentils with 1 cup chopped vegetables (eg. carrot, pumpkin, celery, onion), vegetable stock and barley. Serve with dollop of natural yoghurt. + 1 serve of fruit.",
      'dinner':
          "Spaghetti Bolognese: Lean mince with tomato, tomato puree, herbs & garlic served on spaghetti and sprinkled with cheese + 1 cup salad (eg. baby spinach, carrots, cucumber) with olive oil based dressing.",
      'snacks': "20g cheese + Canned tuna in oil on wholegrain crackers."
    },
    {
      "id": 4,
      "imageUrl": "assets/images/day4.png",
      "dayNumber": 'Day 4',
      'breakfast':
          'Wholegrain Cereal with Milk and Fruit: Wholegrain flaky cereal + full cream milk + 2 tbsp linseeds + 1 serve of fruit (eg. 6 dried apricot halves or 4 small plums).',
      'lunch':
          "Chicken and Noodle Stir-fry: Sliced lean chicken + Hokkein noodles + 1 cup vegetables (eg. beans, capsicum, spinach, carrot) cooked in sesame oil + sweet soy sauce dressing. Sprinkle with sesame seeds.",
      'dinner':
          "Nasi Goreng Tray Bake (1 serve): Serve with 2 cup mixed salad vegetables.",
      'snacks':
          "1 serve of fruit (eg. 5 prunes or 1 cup fresh fruit salad). 1 cup hot chocolate made with full cream milk."
    },
    {
      "id": 5,
      "imageUrl": "assets/images/day5.jpg",
      "dayNumber": 'Day 5',
      'breakfast':
          'Poached Eggs with Sauteed Field Mushroom and Avocado (1 serve): Serve with 1 cafe latte or hot chocolate made with full cream milk.',
      'lunch':
          "Fish and Chips: Dip fish fillets in flour, egg then breadcrumbs and shallow fry in canola oil. Serve with homemade thick potato chunky chips, lemon wedges and 2 cups mixed salad vegetables with olive oil dressing. + 1 serve of fruit.",
      'dinner':
          "Mango Chicken and Corn: Grilled chicken thighs served with mango salsa, corn on the cob & 1.5 cups baked vegetables (eg. carrot, onion, beans) in olive oil.",
      'snacks': "Banana slices + ricotta cheese + nut butter on toast."
    },
    {
      "id": 6,
      "imageUrl": "assets/images/day6.jpg",
      "dayNumber": 'Day 6',
      'breakfast':
          'Fruit Toast with Berry Smoothie: Slices of fruit toast spread with butter and/or jam to taste. Serve with a smoothie made with 1 cup full cream milk + 1 cup berries + 2 tbsp linseed/sunflower/almond meal.',
      'lunch':
          "Tuna and Quinoa Salad: Tuna in oil mixed with 3 bean mix + 2 cups salad vegetables (eg. leafy greens, tomato, cucumber, carrot, capsicum) + cooked quinoa + olive oil/vinegar dressing.",
      'dinner': "Easy Fish Pie: Serve with 2 cup mixed salad vegetables.",
      'snacks': "1 tub yoghurt. 3 wholegrain crackers with hummus."
    },
    {
      "id": 7,
      "imageUrl": "assets/images/day7.jpg",
      "dayNumber": 'Day 7',
      'breakfast':
          'Bechamel Spinach Baked Egg (1 serve): Serve with 1 café latte.',
      'lunch':
          "Beef and Noodle Soup: Thinly sliced beef + fresh flat rice noodles + 1 cup vegetables (eg. bean sprouts, carrot, broccoli) cooked in vegetable stock. Sprinkle with diced green onion. + 1 serve of fruit (eg. 1 medium apple or banana).",
      'dinner':
          "Pork Roast and Vegetables: Lean pork roast + baked potato + 1.5 cups baked vegetables + olive oil (for cooking).",
      'snacks': "1 tub yoghurt. A handful of mixed nuts and/or seeds."
    },
    {
      "id": 8,
      "imageUrl": "assets/images/day1.jpg",
      "dayNumber": 'Day 8',
      'breakfast':
          'Peanut Butter on Wholegrain Toast: Toasted wholegrain bread+ 2 tbsp peanut butter. Drizzle with honey to taste. Serve with 1 hot chocolate, made with milk + 1 serve of fruit (eg. 1 medium pear or orange).',
      'lunch':
          "Chicken and Pasta Salad: Cooked chicken + pasta + 1 cup leafy green vegetables (eg. spinach, rocket) + tomato + avocado + crumbled feta cheese + olive oil/vinegar dressing.",
      'dinner':
          "Lamb Chops and Vegetables: Lamb chop, trimmed & shallow fried in olive oil. Serve with sweet potato mash made with milk and olive oil + 2 cups cooked vegetables.",
      'snacks': "A handful of mixed nuts and/or seeds."
    },
    {
      "id": 9,
      "imageUrl": "assets/images/day2.jpg",
      "dayNumber": 'Day 9',
      'breakfast':
          'Chia Porridge with Fruit: 2 tbsp chia seeds + rolled oats + 1.5 cup full cream milk + 1 serve of fruit (eg. 1 medium banana or 6 dried prunes).',
      'lunch':
          "Egg, Cheese and Salad Wrap: 2 boiled & mashed eggs + 2 cheese slices + avocado + 1 cup salad vegetables (eg. lettuce, cucumber, carrot, capsicum) rolled up in tortilla bread (make 2 wraps) + 1 cup fruit juice.",
      'dinner':
          "Baked Salmon, Cous Cous and Vegetables: Oven baked salmon fillet, sprinkled with sesame oil and sesame seeds + wholemeal cous cous + 2 cups cooked vegetables. Serve with hommus.",
      'snacks':
          "A handful of mixed nuts and/or seeds. Fruit toast with butter and/or jam.",
    },
    {
      "id": 10,
      "imageUrl": "assets/images/day3.jpg",
      "dayNumber": 'Day 10',
      'breakfast':
          'Sweet Potato Spanish Omelette (1 serve): Serve with 1 cafe latte or hot chocolate made with full cream milk.',
      'lunch':
          "Lentil, Vegetables and Barley Soup: Lentils with 1 cup chopped vegetables (eg. carrot, pumpkin, celery, onion), vegetable stock and barley. Serve with dollop of natural yoghurt. + 1 serve of fruit.",
      'dinner':
          "Spaghetti Bolognese: Lean mince with tomato, tomato puree, herbs & garlic served on spaghetti and sprinkled with cheese + 1 cup salad (eg. baby spinach, carrots, cucumber) with olive oil based dressing.",
      'snacks': "20g cheese + Canned tuna in oil on wholegrain crackers."
    },
    {
      "id": 11,
      "imageUrl": "assets/images/day4.png",
      "dayNumber": 'Day 11',
      'breakfast':
          'Wholegrain Cereal with Milk and Fruit: Wholegrain flaky cereal + full cream milk + 2 tbsp linseeds + 1 serve of fruit (eg. 6 dried apricot halves or 4 small plums).',
      'lunch':
          "Chicken and Noodle Stir-fry: Sliced lean chicken + Hokkein noodles + 1 cup vegetables (eg. beans, capsicum, spinach, carrot) cooked in sesame oil + sweet soy sauce dressing. Sprinkle with sesame seeds.",
      'dinner':
          "Nasi Goreng Tray Bake (1 serve): Serve with 2 cup mixed salad vegetables.",
      'snacks':
          "1 serve of fruit (eg. 5 prunes or 1 cup fresh fruit salad). 1 cup hot chocolate made with full cream milk."
    },
    {
      "id": 12,
      "imageUrl": "assets/images/day5.jpg",
      "dayNumber": 'Day 12',
      'breakfast':
          'Poached Eggs with Sauteed Field Mushroom and Avocado (1 serve): Serve with 1 cafe latte or hot chocolate made with full cream milk.',
      'lunch':
          "Fish and Chips: Dip fish fillets in flour, egg then breadcrumbs and shallow fry in canola oil. Serve with homemade thick potato chunky chips, lemon wedges and 2 cups mixed salad vegetables with olive oil dressing. + 1 serve of fruit.",
      'dinner':
          "Mango Chicken and Corn: Grilled chicken thighs served with mango salsa, corn on the cob & 1.5 cups baked vegetables (eg. carrot, onion, beans) in olive oil.",
      'snacks': "Banana slices + ricotta cheese + nut butter on toast."
    },
    {
      "id": 13,
      "imageUrl": "assets/images/day6.jpg",
      "dayNumber": 'Day 13',
      'breakfast':
          'Fruit Toast with Berry Smoothie: Slices of fruit toast spread with butter and/or jam to taste. Serve with a smoothie made with 1 cup full cream milk + 1 cup berries + 2 tbsp linseed/sunflower/almond meal.',
      'lunch':
          "Tuna and Quinoa Salad: Tuna in oil mixed with 3 bean mix + 2 cups salad vegetables (eg. leafy greens, tomato, cucumber, carrot, capsicum) + cooked quinoa + olive oil/vinegar dressing.",
      'dinner': "Easy Fish Pie: Serve with 2 cup mixed salad vegetables.",
      'snacks': "1 tub yoghurt. 3 wholegrain crackers with hummus."
    },
    {
      "id": 14,
      "imageUrl": "assets/images/day7.jpg",
      "dayNumber": 'Day 14',
      'breakfast':
          'Bechamel Spinach Baked Egg (1 serve): Serve with 1 café latte.',
      'lunch':
          "Beef and Noodle Soup: Thinly sliced beef + fresh flat rice noodles + 1 cup vegetables (eg. bean sprouts, carrot, broccoli) cooked in vegetable stock. Sprinkle with diced green onion. + 1 serve of fruit (eg. 1 medium apple or banana).",
      'dinner':
          "Pork Roast and Vegetables: Lean pork roast + baked potato + 1.5 cups baked vegetables + olive oil (for cooking).",
      'snacks': "1 tub yoghurt. A handful of mixed nuts and/or seeds."
    },
    {
      "id": 15,
      "imageUrl": "assets/images/day1.jpg",
      "dayNumber": 'Day 15',
      'breakfast':
          'Peanut Butter on Wholegrain Toast: Toasted wholegrain bread+ 2 tbsp peanut butter. Drizzle with honey to taste. Serve with 1 hot chocolate, made with milk + 1 serve of fruit (eg. 1 medium pear or orange).',
      'lunch':
          "Chicken and Pasta Salad: Cooked chicken + pasta + 1 cup leafy green vegetables (eg. spinach, rocket) + tomato + avocado + crumbled feta cheese + olive oil/vinegar dressing.",
      'dinner':
          "Lamb Chops and Vegetables: Lamb chop, trimmed & shallow fried in olive oil. Serve with sweet potato mash made with milk and olive oil + 2 cups cooked vegetables.",
      'snacks': "A handful of mixed nuts and/or seeds."
    },
    {
      "id": 16,
      "imageUrl": "assets/images/day2.jpg",
      "dayNumber": 'Day 16',
      'breakfast':
          'Chia Porridge with Fruit: 2 tbsp chia seeds + rolled oats + 1.5 cup full cream milk + 1 serve of fruit (eg. 1 medium banana or 6 dried prunes).',
      'lunch':
          "Egg, Cheese and Salad Wrap: 2 boiled & mashed eggs + 2 cheese slices + avocado + 1 cup salad vegetables (eg. lettuce, cucumber, carrot, capsicum) rolled up in tortilla bread (make 2 wraps) + 1 cup fruit juice.",
      'dinner':
          "Baked Salmon, Cous Cous and Vegetables: Oven baked salmon fillet, sprinkled with sesame oil and sesame seeds + wholemeal cous cous + 2 cups cooked vegetables. Serve with hommus.",
      'snacks':
          "A handful of mixed nuts and/or seeds. Fruit toast with butter and/or jam.",
    },
    {
      "id": 17,
      "imageUrl": "assets/images/day3.jpg",
      "dayNumber": 'Day 17',
      'breakfast':
          'Sweet Potato Spanish Omelette (1 serve): Serve with 1 cafe latte or hot chocolate made with full cream milk.',
      'lunch':
          "Lentil, Vegetables and Barley Soup: Lentils with 1 cup chopped vegetables (eg. carrot, pumpkin, celery, onion), vegetable stock and barley. Serve with dollop of natural yoghurt. + 1 serve of fruit.",
      'dinner':
          "Spaghetti Bolognese: Lean mince with tomato, tomato puree, herbs & garlic served on spaghetti and sprinkled with cheese + 1 cup salad (eg. baby spinach, carrots, cucumber) with olive oil based dressing.",
      'snacks': "20g cheese + Canned tuna in oil on wholegrain crackers."
    },
    {
      "id": 18,
      "imageUrl": "assets/images/day4.png",
      "dayNumber": 'Day 18',
      'breakfast':
          'Wholegrain Cereal with Milk and Fruit: Wholegrain flaky cereal + full cream milk + 2 tbsp linseeds + 1 serve of fruit (eg. 6 dried apricot halves or 4 small plums).',
      'lunch':
          "Chicken and Noodle Stir-fry: Sliced lean chicken + Hokkein noodles + 1 cup vegetables (eg. beans, capsicum, spinach, carrot) cooked in sesame oil + sweet soy sauce dressing. Sprinkle with sesame seeds.",
      'dinner':
          "Nasi Goreng Tray Bake (1 serve): Serve with 2 cup mixed salad vegetables.",
      'snacks':
          "1 serve of fruit (eg. 5 prunes or 1 cup fresh fruit salad). 1 cup hot chocolate made with full cream milk."
    },
    {
      "id": 19,
      "imageUrl": "assets/images/day5.jpg",
      "dayNumber": 'Day 19',
      'breakfast':
          'Poached Eggs with Sauteed Field Mushroom and Avocado (1 serve): Serve with 1 cafe latte or hot chocolate made with full cream milk.',
      'lunch':
          "Fish and Chips: Dip fish fillets in flour, egg then breadcrumbs and shallow fry in canola oil. Serve with homemade thick potato chunky chips, lemon wedges and 2 cups mixed salad vegetables with olive oil dressing. + 1 serve of fruit.",
      'dinner':
          "Mango Chicken and Corn: Grilled chicken thighs served with mango salsa, corn on the cob & 1.5 cups baked vegetables (eg. carrot, onion, beans) in olive oil.",
      'snacks': "Banana slices + ricotta cheese + nut butter on toast."
    },
    {
      "id": 20,
      "imageUrl": "assets/images/day6.jpg",
      "dayNumber": 'Day 20',
      'breakfast':
          'Fruit Toast with Berry Smoothie: Slices of fruit toast spread with butter and/or jam to taste. Serve with a smoothie made with 1 cup full cream milk + 1 cup berries + 2 tbsp linseed/sunflower/almond meal.',
      'lunch':
          "Tuna and Quinoa Salad: Tuna in oil mixed with 3 bean mix + 2 cups salad vegetables (eg. leafy greens, tomato, cucumber, carrot, capsicum) + cooked quinoa + olive oil/vinegar dressing.",
      'dinner': "Easy Fish Pie: Serve with 2 cup mixed salad vegetables.",
      'snacks': "1 tub yoghurt. 3 wholegrain crackers with hummus."
    },
    {
      "id": 21,
      "imageUrl": "assets/images/day7.jpg",
      "dayNumber": 'Day 21',
      'breakfast':
          'Bechamel Spinach Baked Egg (1 serve): Serve with 1 café latte.',
      'lunch':
          "Beef and Noodle Soup: Thinly sliced beef + fresh flat rice noodles + 1 cup vegetables (eg. bean sprouts, carrot, broccoli) cooked in vegetable stock. Sprinkle with diced green onion. + 1 serve of fruit (eg. 1 medium apple or banana).",
      'dinner':
          "Pork Roast and Vegetables: Lean pork roast + baked potato + 1.5 cups baked vegetables + olive oil (for cooking).",
      'snacks': "1 tub yoghurt. A handful of mixed nuts and/or seeds."
    },
    {
      "id": 22,
      "imageUrl": "assets/images/day1.jpg",
      "dayNumber": 'Day 22',
      'breakfast':
          'Peanut Butter on Wholegrain Toast: Toasted wholegrain bread+ 2 tbsp peanut butter. Drizzle with honey to taste. Serve with 1 hot chocolate, made with milk + 1 serve of fruit (eg. 1 medium pear or orange).',
      'lunch':
          "Chicken and Pasta Salad: Cooked chicken + pasta + 1 cup leafy green vegetables (eg. spinach, rocket) + tomato + avocado + crumbled feta cheese + olive oil/vinegar dressing.",
      'dinner':
          "Lamb Chops and Vegetables: Lamb chop, trimmed & shallow fried in olive oil. Serve with sweet potato mash made with milk and olive oil + 2 cups cooked vegetables.",
      'snacks': "A handful of mixed nuts and/or seeds."
    },
    {
      "id": 23,
      "imageUrl": "assets/images/day2.jpg",
      "dayNumber": 'Day 23',
      'breakfast':
          'Chia Porridge with Fruit: 2 tbsp chia seeds + rolled oats + 1.5 cup full cream milk + 1 serve of fruit (eg. 1 medium banana or 6 dried prunes).',
      'lunch':
          "Egg, Cheese and Salad Wrap: 2 boiled & mashed eggs + 2 cheese slices + avocado + 1 cup salad vegetables (eg. lettuce, cucumber, carrot, capsicum) rolled up in tortilla bread (make 2 wraps) + 1 cup fruit juice.",
      'dinner':
          "Baked Salmon, Cous Cous and Vegetables: Oven baked salmon fillet, sprinkled with sesame oil and sesame seeds + wholemeal cous cous + 2 cups cooked vegetables. Serve with hommus.",
      'snacks':
          "A handful of mixed nuts and/or seeds. Fruit toast with butter and/or jam.",
    },
    {
      "id": 24,
      "imageUrl": "assets/images/day3.jpg",
      "dayNumber": 'Day 24',
      'breakfast':
          'Sweet Potato Spanish Omelette (1 serve): Serve with 1 cafe latte or hot chocolate made with full cream milk.',
      'lunch':
          "Lentil, Vegetables and Barley Soup: Lentils with 1 cup chopped vegetables (eg. carrot, pumpkin, celery, onion), vegetable stock and barley. Serve with dollop of natural yoghurt. + 1 serve of fruit.",
      'dinner':
          "Spaghetti Bolognese: Lean mince with tomato, tomato puree, herbs & garlic served on spaghetti and sprinkled with cheese + 1 cup salad (eg. baby spinach, carrots, cucumber) with olive oil based dressing.",
      'snacks': "20g cheese + Canned tuna in oil on wholegrain crackers."
    },
    {
      "id": 25,
      "imageUrl": "assets/images/day4.png",
      "dayNumber": 'Day 25',
      'breakfast':
          'Wholegrain Cereal with Milk and Fruit: Wholegrain flaky cereal + full cream milk + 2 tbsp linseeds + 1 serve of fruit (eg. 6 dried apricot halves or 4 small plums).',
      'lunch':
          "Chicken and Noodle Stir-fry: Sliced lean chicken + Hokkein noodles + 1 cup vegetables (eg. beans, capsicum, spinach, carrot) cooked in sesame oil + sweet soy sauce dressing. Sprinkle with sesame seeds.",
      'dinner':
          "Nasi Goreng Tray Bake (1 serve): Serve with 2 cup mixed salad vegetables.",
      'snacks':
          "1 serve of fruit (eg. 5 prunes or 1 cup fresh fruit salad). 1 cup hot chocolate made with full cream milk."
    },
    {
      "id": 26,
      "imageUrl": "assets/images/day5.jpg",
      "dayNumber": 'Day 26',
      'breakfast':
          'Poached Eggs with Sauteed Field Mushroom and Avocado (1 serve): Serve with 1 cafe latte or hot chocolate made with full cream milk.',
      'lunch':
          "Fish and Chips: Dip fish fillets in flour, egg then breadcrumbs and shallow fry in canola oil. Serve with homemade thick potato chunky chips, lemon wedges and 2 cups mixed salad vegetables with olive oil dressing. + 1 serve of fruit.",
      'dinner':
          "Mango Chicken and Corn: Grilled chicken thighs served with mango salsa, corn on the cob & 1.5 cups baked vegetables (eg. carrot, onion, beans) in olive oil.",
      'snacks': "Banana slices + ricotta cheese + nut butter on toast."
    },
    {
      "id": 27,
      "imageUrl": "assets/images/day6.jpg",
      "dayNumber": 'Day 27',
      'breakfast':
          'Fruit Toast with Berry Smoothie: Slices of fruit toast spread with butter and/or jam to taste. Serve with a smoothie made with 1 cup full cream milk + 1 cup berries + 2 tbsp linseed/sunflower/almond meal.',
      'lunch':
          "Tuna and Quinoa Salad: Tuna in oil mixed with 3 bean mix + 2 cups salad vegetables (eg. leafy greens, tomato, cucumber, carrot, capsicum) + cooked quinoa + olive oil/vinegar dressing.",
      'dinner': "Easy Fish Pie: Serve with 2 cup mixed salad vegetables.",
      'snacks': "1 tub yoghurt. 3 wholegrain crackers with hummus."
    },
    {
      "id": 28,
      "imageUrl": "assets/images/day7.jpg",
      "dayNumber": 'Day 28',
      'breakfast':
          'Bechamel Spinach Baked Egg (1 serve): Serve with 1 café latte.',
      'lunch':
          "Beef and Noodle Soup: Thinly sliced beef + fresh flat rice noodles + 1 cup vegetables (eg. bean sprouts, carrot, broccoli) cooked in vegetable stock. Sprinkle with diced green onion. + 1 serve of fruit (eg. 1 medium apple or banana).",
      'dinner':
          "Pork Roast and Vegetables: Lean pork roast + baked potato + 1.5 cups baked vegetables + olive oil (for cooking).",
      'snacks': "1 tub yoghurt. A handful of mixed nuts and/or seeds."
    },
    {
      "id": 29,
      "imageUrl": "assets/images/day1.jpg",
      "dayNumber": 'Day 29',
      'breakfast':
          'Peanut Butter on Wholegrain Toast: Toasted wholegrain bread+ 2 tbsp peanut butter. Drizzle with honey to taste. Serve with 1 hot chocolate, made with milk + 1 serve of fruit (eg. 1 medium pear or orange).',
      'lunch':
          "Chicken and Pasta Salad: Cooked chicken + pasta + 1 cup leafy green vegetables (eg. spinach, rocket) + tomato + avocado + crumbled feta cheese + olive oil/vinegar dressing.",
      'dinner':
          "Lamb Chops and Vegetables: Lamb chop, trimmed & shallow fried in olive oil. Serve with sweet potato mash made with milk and olive oil + 2 cups cooked vegetables.",
      'snacks': "A handful of mixed nuts and/or seeds."
    },
    {
      "id": 30,
      "imageUrl": "assets/images/day2.jpg",
      "dayNumber": 'Day 30',
      'breakfast':
          'Chia Porridge with Fruit: 2 tbsp chia seeds + rolled oats + 1.5 cup full cream milk + 1 serve of fruit (eg. 1 medium banana or 6 dried prunes).',
      'lunch':
          "Egg, Cheese and Salad Wrap: 2 boiled & mashed eggs + 2 cheese slices + avocado + 1 cup salad vegetables (eg. lettuce, cucumber, carrot, capsicum) rolled up in tortilla bread (make 2 wraps) + 1 cup fruit juice.",
      'dinner':
          "Baked Salmon, Cous Cous and Vegetables: Oven baked salmon fillet, sprinkled with sesame oil and sesame seeds + wholemeal cous cous + 2 cups cooked vegetables. Serve with hommus.",
      'snacks':
          "A handful of mixed nuts and/or seeds. Fruit toast with butter and/or jam.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Diets List"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ListView.builder(
          itemCount: itemDetailsMap.length,
          itemBuilder: (context, index) => InkWell(
            onTap: (() {
              Get.to(DietItemDetails(
                itemDetailsMap[index]['imageUrl'],
                itemDetailsMap[index]['dayNumber'],
                itemDetailsMap[index]['breakfast'],
                itemDetailsMap[index]['lunch'],
                itemDetailsMap[index]['dinner'],
                itemDetailsMap[index]['snacks'],
              ));
            }),
            child: diteItemsCard(
                imageUrl: itemDetailsMap[index]['imageUrl'],
                title: itemDetailsMap[index]['dayNumber']),
          ),
          // diteItemsCard(imageUrl: 'assets/images/day2.jpg', title: "Day 2"),
          // diteItemsCard(imageUrl: 'assets/images/day3.jpg', title: "Day 3"),
          // diteItemsCard(imageUrl: 'assets/images/day4.png', title: "Day 4"),
          // diteItemsCard(imageUrl: 'assets/images/day5.jpg', title: "Day 5"),
          // diteItemsCard(imageUrl: 'assets/images/day6.jpg', title: "Day 6"),
          // diteItemsCard(imageUrl: 'assets/images/day7.jpg', title: "Day 7")
        ),
      ),
    );
  }
}
