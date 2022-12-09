import 'package:bmi/Screens/diets/item_detail_screen.dart';
import 'package:bmi/widgets/disease_item_widget.dart';
import 'package:bmi/widgets/exercise_item_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../widgets/diet_item_widget.dart';
import 'disease_item.dart';

class Diseases extends StatelessWidget {
  Diseases({Key? key}) : super(key: key);

  List<Map<String, dynamic>> diseaseItemDetailsMap = [
    {
      "id": 1,
      "title": 'Allergies',
      'subtitle':
          "Allergies are an immune response triggered by allergens, an ordinarily harmful substance.",
      'causes':
          "People with allergies have especially sensitive immune systems that react when they contact allergens. Common allergens include: foods (nuts, eggs, milk, soy, shellfish, wheat) pollen mold latex pet dander",
      'symptoms':
          "Because there are so many possible causes, the symptoms of allergies vary widely. Airborne allergens, like pollen and pet dander, are likely to cause: Eye irritation Runny nose Stuffy nose Puffy, watery eyes Sneezing Inflamed, itchy nose and throat Allergens that are consumed, like foods or certain medications, can cause: Hives or skin rashes Gastrointestinal distress (diarrhea, nausea, vomiting, excessing gas, indigestion) Tingling or swelling of the lips, face, or tongue Itchiness Difficulty breathing or wheezing Fainting/ or lightheadedness In cases of a more extreme response, called anaphylaxis, symptoms are severe and life-threatening.",
      'treatment':
          "The easiest and most effective way to treat allergies is to get rid of or avoid the cause. Where unavoidable, some lifestyle changes can reduce your allergy symptoms. For example, if you are allergic to dust mites, make an effort to keep your room clean and free of dust by frequent vacuuming, dusting, and washing of bedding. For pollen allergies, avoid being outside when pollen counts are high and keep the windows to your room shut. Because it is very difficult to avoid certain allergens, medication may be necessary to lessen symptoms caused by allergens, other than food and drugs. Antihistamines: help relieve or prevent the sneezing, itchy eyes and throat, and postnasal drip that the allergen may cause. They are sold in many forms (i.e., pills, nasal sprays, liquids, etc.). Decongestants: help reduce congestion in your nasal membranes by narrowing the blood vessels that supply those membranes. They can be purchased in several forms (liquid, pill or nasal spray) and may be used with an antihistamine or alone to treat nasal swelling related to allergies.  Limit use of nasal sprays to fewer than two to three days in a row because prolonged use can cause the nasal membrane swells, resulting in severe nasal obstruction. Anti-inflammatory agents (e.g., corticosteroid): help reduce swelling of the airways, nasal congestion and sneezing. Typically taken as a nasal spray. Some people report that corticosteroids irritate nasal passages. Allergy shots: recommended for serious allergy sufferers, this series of shots are administered by a healthcare provider and contain small amounts of the allergens that cause you discomfort. The goal of allergy shots is to enable your immune system to build better defenses against allergens. Some allergies go away with age, but others are lifelong.",
      'prevention':
          "Avoid the outdoors between 5-10 a.m. and save outside activities for late afternoon or after a heavy rain, when pollen levels are lower. Keep windows in your living spaces closed to lower exposure to pollen. To keep cool, use air conditioners and avoid using window and attic fans. Wear a medical alert bracelet or other means to communicate to others about your allergy in case of a reaction. Discuss a prescription for epinephrine (e.g., EpiPen) with your healthcare provider, if you have risk of serious allergic reaction. Review product labels carefully before buying or consuming any item Know what you are eating or drinking."
    },
    {
      "id": 2,
      "title": 'Cold and Flu',
      'subtitle':
          "Colds and influenza (flu) are the most common illnesses among college students.",
      'causes':
          "Both of these illnesses are upper respiratory infections, meaning they involve your nose, throat, and lungs. Viruses cause both colds and flu by increasing inflammation of the membranes in the nose and throat. Most transmission of these viruses occurs via hand-to-hand contact.",
      'symptoms':
          "Flu symptoms come on suddenly and affect the body all over. Flu symptoms are usually more serious than a cold and include: fever (100° F),headache, more intense pain and fatigue, and more severe, often dry cough. When you get the flu, you are also more prone to bronchitis, sinus, and ear infections. Cold symptoms mostly affect above the neck and include: a runny or stuffy nose (nasal congestion), sneezing, sore throat, and cough. You may also experience a mild headache, body aches or a low grade fever. Typically, a cold lasts 2-14 days.",
      'treatment':
          "If any problem is causing you discomfort, you should seek medical care.Seek medical attention promptly if you have: a fever of 102° F or greater (which may indicate a more serious infection), a persisting cough, especially with a significant fever (which could indicate pneumonia), a persistent sore throat (especially if runny nose does not develop - which could indicate a strep infection), or any cold lasting more than 10 days. Because colds and flu are caused by viruses, they cannot be cured by antibiotics. There are tips to help you feel better and strengthen your immune system to fight illness: Rest more than usual and avoid exercise until symptoms are gone. Drink lots of clear fluids (e.g., water, tea). Stay away from cigarette smoke. Do not take antibiotics unless specifically prescribed for you to cure the illness from which you currently suffer. Avoid drinking alcohol because it weakens your immune system and may interact with medications. Avoid caffeine, which can increase congestion and dehydration. Eat a well-balanced diet, including fruits, vegetables, and grains.",
      'prevention':
          "UHS offers flu shots to Princeton students at a reduced cost every fall. Even though getting a flu shot will not completely eliminate your chances of developing the flu, it will certainly reduce the risk. Each year, a new vaccine made from inactivated (killed) influenza viruses is formulated. Since it may take the immune system time to respond to the vaccination, the inactivated vaccine should be given 6 to 8 weeks before flu season begins in order to prevent infection or reduce the severity of the illness. The flu is probably only contagious during the first three days of illness, and the incubation period is 24-72 hours, meaning you might not show symptoms for three days after contracting the virus. It is rare to catch a cold virus through the air – most transmission occurs via hand-to-hand contact. To prevent colds, flu, and other illnesses, follow these tips: Wash your hands often (which is good advice for keeping healthy in any situation). Keep them away from your nose, eyes, and mouth. Use an instant hand sanitizer when you can’t wash your hands. Get regular exercise and eat well. Follow good sleep habits. Get a flu shot each fall (offered to all students at a lower cost by UHS each fall) ."
    },
    {
      "id": 3,
      "title": 'Conjunctivitis (“pink eye“)',
      'subtitle':
          "Colds and influenza (flu) are the most common illnesses among college students.",
      'causes':
          "Conjunctivitis, an inflammation of the transparent membrane (conjunctiva) that lines your eyelids and part of your eyeballs, has several possible causes. It could be a bacterial or viral infection, an allergic reaction to pollen or animal dander, or a result of chemical irritants (smoke, chlorine, lens solution, etc.).",
      'symptoms':
          "These symptoms may last a few hours to several weeks: redness, itching, tearing, burning sensation, pus-like discharge and/or crusting of the eyelids. Because conjunctivitis causes inflammation of the small blood vessels in the conjunctiva to become more prominent, the whites of your eyes will appear pink or red. When you wake you are likely to feel that your eyelids are pasted shut, and your vision may not be as clear as usual.",
      'treatment':
          "Because pink eye is highly contagious, early diagnosis is important. Bacterial cases can be cured with antibiotic eye drops, viral conjunctivitis clears up on its own, and allergic reactions can be treated with various types of eye drops. Here are some general tips: Wash your hands frequently to prevent spreading an existing infection to your other eye, and to other people. Don’t rub your eyes. Use a cool wet washcloth to soak off any crusting. Use a warm or cool compress to reduce discomfort. Discard eye make-up because it may cause future infection. Wash any clothing that may be contaminated, including towels and pillowcases. Try to use clean towels and pillowcases everyday. Avoid wearing contact lenses and discard current lenses. If eye drops are prescribed, place drop in pocket formed by pulling down lower lid. Make sure you don’t touch the bottle to the eye in order to prevent contamination. If the infection does not improve in 2 or 3 days, make an appointment for re-evaluation.",
      'prevention':
          "Pink eye is extremely contagious, so if you know someone who is infected, make sure you do not expose yourself to contact with the person’s eye fluid. The infection can easily be passed via keyboards, doorknobs, make-up, pens, gym equipment, and a vast number of other items. To protect yourself, wash your hands frequently, avoid touching your eyes, and wash anything that may be contaminated."
    },
    {
      "id": 4,
      "title": 'Diarrhea',
      'subtitle':
          "Colds and influenza (flu) are the most common illnesses among college students.",
      'causes':
          "Bacterial infection, caused by contaminated food or water Viral infection Parasites, which can enter the body through food or water Food intolerance, such as the inability to digest lactose, the sugar in milk Overuse of alcohol or laxatives Medication, such as some antibiotics or antacids containing magnesium Menstrual cramps Stress or a panic attack",
      'symptoms':
          "watery, loose stools frequent bowel movements cramping or pain in the abdomen, nausea, bloating possibly fever or bloody stools, depending on the cause",
      'treatment':
          "Usually diarrhea will clear up on its own in a day or two, but a prolonged case may cause complications. The most important concern is dehydration. If you have symptoms of dehydration, a fever above 102° F, bloody stools (black and tarry), severe abdomen or rectum pain, or diarrhea lasting more than 3 days you should consult a physician. Here’s some advice for taking care of diarrhea yourself: Avoid foods that are milk-based, greasy, high-fiber, or very sweet because these are likely to aggravate diarrhea. Avoid caffeine and alcohol. Do not eat solid food if you have signs of dehydration (thirst, light-headed, dark urine). Instead, drink about 2 cups of clear fluids per hour (if vomiting isn’t present), such as sports drinks and broth. Water alone is not enough because your body needs sodium and sugar to replace what it’s losing. Avoid high sugar drinks, like apple juice, grape juice, and soda, which can pull water into the intestine and make the diarrhea persist. Don’t drink clear liquids exclusively for more than 24 hours. Begin eating normal meals within 12 hours, but stick to food that is bland and won’t irritate your intestine. Some doctors suggest the “BRAT“ diet which includes foods that are low in fiber, fat, and sugar. BRAT stands for Bananas, Rice, Applesauce, and Toast. Use over-the-counter lactobacillus acidophilus capsules or tablets. These bacteria help maintain a healthy intestine, and are found in yogurt with live active cultures. Decrease level of exercise until symptoms are gone. Over-the-counter drugs, such as Imodium A-D, should only be used if absolutely necessary because it is important to let diarrhea flush out the bacteria or parasite that’s causing the infection.",
      'prevention':
          "UHS offers flu shots to Princeton students at a reduced cost every fall. Even though getting a flu shot will not completely eliminate your chances of developing the flu, it will certainly reduce the risk. Each year, a new vaccine made from inactivated (killed) influenza viruses is formulated. Since it may take the immune system time to respond to the vaccination, the inactivated vaccine should be given 6 to 8 weeks before flu season begins in order to prevent infection or reduce the severity of the illness. The flu is probably only contagious during the first three days of illness, and the incubation period is 24-72 hours, meaning you might not show symptoms for three days after contracting the virus. It is rare to catch a cold virus through the air – most transmission occurs via hand-to-hand contact. To prevent colds, flu, and other illnesses, follow these tips: Wash your hands often (which is good advice for keeping healthy in any situation). Keep them away from your nose, eyes, and mouth. Use an instant hand sanitizer when you can’t wash your hands. Get regular exercise and eat well. Follow good sleep habits. Get a flu shot each fall (offered to all students at a lower cost by UHS each fall) ."
    },
    {
      "id": 5,
      "title": 'Headaches',
      'subtitle':
          "Everyone suffers the occasional mild headache, but if you experience debilitating pain and/or abnormally frequent headaches, you probably want to find relief. There are countless causes of headaches, which differ for each person, so you’ll have to do some experimenting to figure out the cause of your pain.",
      'causes':
          "The cause of a headache is often elusive. Although it may seem that your head is pounding for no reason, there is always an explanation for pain. To find out the cause of your headaches, keep a log. Write down the date and time each headache starts and stops, the location of the pain, the nature and severity of the pain, and any factors that seem to trigger the headaches (food, stress, menstrual cycle, medicine, etc.).",
      'symptoms':
          "Flu symptoms come on suddenly and affect the body all over. Flu symptoms are usually more serious than a cold and include: fever (100° F),headache, more intense pain and fatigue, and more severe, often dry cough. When you get the flu, you are also more prone to bronchitis, sinus, and ear infections. Cold symptoms mostly affect above the neck and include: a runny or stuffy nose (nasal congestion), sneezing, sore throat, and cough. You may also experience a mild headache, body aches or a low grade fever. Typically, a cold lasts 2-14 days.",
      'treatment':
          "Just as the causes vary for each headache sufferer, so do the symptoms and severity of pain. Health professionals can often diagnose the type of headache you suffer based on your symptoms. Symptoms of a migraine: pulsing or throbbing quality begins with intense pain on one side of the head, which eventually spreads felt on one or both sides of the head lasts several hours severe enough to interfere with routine activities may be accompanied by nausea or vomiting sometimes preceded by visual changes, such as an aura of zigzag lines or flashes of light light and noise can make the headache worse, while sleep tends to relieve symptoms Symptoms of a tension-type headache: constant, dull ache felt on both sides of the head a feeling of squeezing or pressure does not usually interfere with routine activities lasts from 30 minutes to a few days",
      'prevention':
          "Be aware of early symptoms so you can try to stop the headache as soon as it begins. Don’t smoke, and if you do, quit. Don’t skip meals. Cut down on caffeine and alcohol (reduce caffeine intake gradually because withdrawal may cause headaches).Stop all over-the-counter medicines and herbal remedies. Maintain a regular eating and sleeping schedule. Exercise regularly. Incorporate relaxation activities into your daily routine, such as meditation, yoga, stretching exercises, and massage Improve your posture, possibly by adjusting your workstation."
    },
    {
      "id": 6,
      "title": 'Mononucleosis',
      'subtitle':
          "Mononucleosis is an illness caused by the Epstein-Barr virus (EBV), which is spread through saliva.",
      'causes':
          "The most well known symptom of “mono“ is extreme fatigue, forcing the infected person to nap frequently. If you experience such extreme fatigue accompanied by other symptoms, such as swollen lymph glands and spleen, sore throat, fever, loss of appetite, and muscle aches, you may want to get tested for mono. The basis for testing whether you have mono is the presence of antibodies produced by white blood cells. Many people infected with mono don’t get sick, or have such mild symptoms they don’t know they have it. EBV is usually in the body 30-50 days before an infected person develops symptoms. Surprisingly, 80-95% of adults in the US have been infected by the time they’re 40, but only about 20% know they’ve had mono.",
      'symptoms':
          "Flu symptoms come on suddenly and affect the body all over. Flu symptoms are usually more serious than a cold and include: fever (100° F),headache, more intense pain and fatigue, and more severe, often dry cough. When you get the flu, you are also more prone to bronchitis, sinus, and ear infections. Cold symptoms mostly affect above the neck and include: a runny or stuffy nose (nasal congestion), sneezing, sore throat, and cough. You may also experience a mild headache, body aches or a low grade fever. Typically, a cold lasts 2-14 days.",
      'treatment':
          "Mono is a virus, so antibiotics won’t help. Make sure you get plenty of rest, eat healthy foods, avoid alcohol (because your liver may be inflamed and drinking weakens immune responses), drink plenty of fluids, take aspirin or an aspirin substitute to reduce pain and fever, gargle salt water to relieve sore throat, and avoid strenuous activity. Because your spleen may be swollen, it is important not to engage in contact sports which could rupture your spleen. Returning to normal activity too quickly increases your chances of relapse.",
      'prevention':
          "Avoiding someone with mono can be hard because infected individuals often do not show symptoms. Because the incubation period is so long, a person can be contagious 1-2 months before showing any symptoms, and some people don’t show symptoms at all. Even after signs of mono have disappeared, a person may still be producing the virus. A strong immune system, maintained by healthy diet, exercise, and adequate sleep, can help you from getting ill. Fortunately, mono is not very contagious, and is usually only passed through intimate contact, such as kissing. [top]"
    },
    {
      "id": 7,
      "title": 'Stomach Aches',
      'subtitle': "Intestinal Gas",
      'causes':
          "It’s natural to have gas in your digestive tract, and to pass gas regularly. In fact, everyone passes gas at least 12 times a day, which is a combination of oxygen, hydrogen, nitrogen, carbon dioxide, and methane. The unpleasant odor of flatus is cause by gases (e.g. hydrogen sulfide) produced by the bacteria in the large intestine. Even though it’s natural to have gas in your digestive tract, excessive gas can cause intense, temporary pain. People who suffer discomfort from gas in the intestine report abdominal bloating, flatulence, and jabbing pains or cramps in the abdomen. Intestinal gas can mimic the pain associated with real illnesses, like gallbladder disease, heart disease, and appendicitis, but be aware that it can also signal other illnesses, such as stomach flu or food poisoning.",
      'symptoms':
          "There are two general causes of gas: swallowed air and the breakdown of undigested foods by harmless bacteria in the large intestine. Everyone swallows air when they eat and drink, but these activities are likely to increase the amount ingested: Eating or drinking rapidly Drinking through a straw Chewing gum or eating hard candy Smoking",
      'treatment':
          "Food triggers vary from person to person, but the types of food that seem to cause the most problems are those that are high in fiber or lactose. Foods that may cause gas include:Beans Peas Lentils Cabbage Broccoli Brussels sprouts Milk products (if you lack adequate amounts of the enzyme lactase)",
      'prevention':
          "To prevent gas:Avoid foods that trigger gas. Avoid swallowing excess air by not chewing gum or eating hard candy. Take digestive enzyme supplements, such as Beano (for high-fiber foods) and lactase supplements (for milk products). Eat only small amounts of dairy products with food, if you suspect lactose intolerance. Eat several small meals throughout the day instead of two or three larger ones. Eat slowly, in a relaxed setting, and chew your food thoroughly."
    },
    {
      "id": 8,
      "title": 'Nausea and Vomiting',
      'subtitle': "Intestinal Gas",
      'causes':
          "Possible causes for nausea and/or vomiting:Viruses in the intestines (viral gastroenteritis, see below) Some medications, such as certain antibiotics and birth control pills Eating too much or eating spoiled food Drinking too much (e.g. alcohol)Motion sickness Morning sickness in pregnant females",
      'symptoms':
          "There are two general causes of gas: swallowed air and the breakdown of undigested foods by harmless bacteria in the large intestine. Everyone swallows air when they eat and drink, but these activities are likely to increase the amount ingested: Eating or drinking rapidly Drinking through a straw Chewing gum or eating hard candy Smoking",
      'treatment':
          "Gastroenteritis, a.k.a. “stomach flu,“ is an inflammation of the intestines that can be caused by viruses, parasites, bacteria, food allergies, overuse of alcohol, and psychological reactions. Viruses that cause gastroenteritis can enter the intestine from contaminated food or water, or through contact with an infected person. Many different viruses can infect the intestine, but the signs and symptoms of gastroenteritis are generally the same: abdominal cramps, watery diarrhea and nausea and/or vomiting. Symptoms of gastroenteritis can develop anywhere from a few hours to a few days after contamination. Most cases resolve within a couple days without specific treatment, but some may last for up to 10 days. In addition to avoiding food and water that might be contaminated, you should wash your hands thoroughly and frequently (especially because viruses often enter the body through the fecal-oral route, when people do not wash their hands thoroughly after bowel movements). Because stomach flu is contagious, avoid sharing eating utensils, drinks, towels, and other objects that may transmit the virus from one person to another.",
      'prevention':
          "To prevent gas:Avoid foods that trigger gas. Avoid swallowing excess air by not chewing gum or eating hard candy. Take digestive enzyme supplements, such as Beano (for high-fiber foods) and lactase supplements (for milk products). Eat only small amounts of dairy products with food, if you suspect lactose intolerance. Eat several small meals throughout the day instead of two or three larger ones. Eat slowly, in a relaxed setting, and chew your food thoroughly."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Diseases & Care"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: ListView.builder(
          itemCount: diseaseItemDetailsMap.length,
          itemBuilder: (context, index) => InkWell(
            onTap: (() {
              Get.to(DiseasesItemDetails(
                diseaseItemDetailsMap[index]['title'],
                diseaseItemDetailsMap[index]['subtitle'],
                diseaseItemDetailsMap[index]['causes'],
                diseaseItemDetailsMap[index]['symptoms'],
                diseaseItemDetailsMap[index]['treatment'],
                diseaseItemDetailsMap[index]['prevention'],
              ));
            }),
            child: DiseaseItemsCard(
              title: diseaseItemDetailsMap[index]['title'],
              subtitle: diseaseItemDetailsMap[index]['subtitle'],
            ),
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
