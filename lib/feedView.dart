import 'package:flutter/material.dart';
import 'package:sanguineo/components/reusableCellView.dart'; // replace with your actual path

class FeedView extends StatefulWidget {
  @override
  _FeedViewState createState() => _FeedViewState();
}

class _FeedViewState extends State<FeedView> {
  bool showingAddressView = false;
  bool showingDonationView = false;
  bool isOrderedByProximity = false;
  bool isOrderedByUrgency = false;

  // Mocked data
  final List<String> items = List<String>.generate(100, (i) => 'Item $i');

  // Mocked user info
  final String bloodType = 'A+';
  final String address = 'Mocked Street';

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leadingWidth: screenWidth / 3.3,
        leading: Container(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset('images/blood.png', height: 30, width: 30),
              const SizedBox(width: 5),
              const Text('B+', style: TextStyle(fontSize: 14)),
            ],
          ),
        ),
        title: GestureDetector(
          onTap: () => setState(() => showingAddressView = !showingAddressView),
          child: Row(
            children: [
              Flexible(
                child: Text(
                  address.length > 25
                      ? '${address.substring(0, 22)}...'
                      : address,
                  style: const TextStyle(fontSize: 16),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Icon(Icons.keyboard_arrow_down),
            ],
          ),
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(Icons.notifications, size: 20),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Flexible(
                  child: Text(
                    "Essas pessoas precisam de sua ajuda",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                const SizedBox(width: 40),
                TextButton(
                  onPressed: () {
                    // Navigation code to DetailedFeedCategoryView goes here
                  },
                  child: Text(
                    "Expandir",
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 260,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                  child: ReusablePersonCellView(
                    image: "images/somegirl.png", // replace with your JPG asset
                    name: "Name $index",
                    bloodtype: "O-",
                    age: 22,
                    description:
                        "Sofri um acidente e nao tenho doadores que possam me ajudar onde eu moro.",
                    onButtonPress: () {
                      print("Button pressed for Item $index!");
                    },
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Flexible(
                  child: Text(
                    "Campanhas de doações",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                const SizedBox(width: 40),
                TextButton(
                  onPressed: () {
                    // Navigation code to DetailedFeedCategoryView goes here
                  },
                  child: Text(
                    "Expandir",
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 260,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                  child: ReusablePersonCellView(
                    image: "images/hospital.jpeg", // replace with your JPG asset
                    name: "Name $index",
                    bloodtype: "O-",
                    description:
                        "Precisamos urgentemente de sangue 0- para inumeros pacientes.",
                    onButtonPress: () {
                      print("Button pressed for Item $index!");
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
