import 'package:flutter/material.dart';

class RecentTransactions extends StatelessWidget {
  const RecentTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Recent Transactions",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
              IconButton(onPressed: null, icon: Icon(Icons.search)),
            ],
          ),
          Column(
            children: const [
              RecentTransaction(
                  title: "Netflix",
                  image: "assets/images/netflix.png",
                  description: "Entertainment",
                  price: 10),
              RecentTransaction(
                  title: "Maria Charles",
                  description: "Card transfer",
                  image: "assets/images/profile1.jpeg",
                  price: 100),
              RecentTransaction(
                  title: "Walmart",
                  description: "Groceries and supermarkets",
                  image: "assets/images/walmart.png",
                  price: 50),
              RecentTransaction(
                  title: "Walmart",
                  description: "Groceries and supermarkets",
                  image: "assets/images/walmart.png",
                  price: 50),
            ],
          )
        ],
      ),
    );
  }
}

class RecentTransaction extends StatelessWidget {
  const RecentTransaction(
      {super.key,
      required this.image,
      required this.title,
      required this.description,
      required this.price});

  final String image, title, description;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: CircleAvatar(
                  radius: 20.0,
                  backgroundImage: AssetImage(image),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  SizedBox(height: 2),
                  Text(
                    "$description",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          Text("- \$$price",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
