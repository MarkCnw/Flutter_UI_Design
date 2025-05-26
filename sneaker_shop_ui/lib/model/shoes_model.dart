import 'package:flutter/material.dart';

class SneakerColorOption {
  final Color color;
  final String image;

  SneakerColorOption({required this.color, required this.image});
}

class SneakerModel {
  final String id;
  final String name;
  final String brand;
  final double price;
  final List<int> sizes;
  final List<SneakerColorOption> colorOptions;
  final String description;

  SneakerModel({
    required this.id,
    required this.name,
    required this.brand,
    required this.price,
    required this.sizes,
    required this.colorOptions,
    required this.description,
  });
}

List<SneakerModel> adidasModel = [
  SneakerModel(
    id: '1',
    name: "Adizero",
    brand: "Adidas",
    price: 6500,
    sizes: [40, 41, 42, 43],
    colorOptions: [
      SneakerColorOption(
        color: Colors.black,
        image: "assets/adidas/Adizeross/black.png",
      ),
      SneakerColorOption(
        color: Colors.yellow,
        image: "assets/adidas/Adizeross/black.png",
      ),
    ],
    description:
        "Adizero shoes are designed for speed and performance, featuring lightweight materials and responsive cushioning. They provide a snug fit and excellent traction, making them ideal for runners and athletes. The sleek design and vibrant color options add a stylish touch to your athletic gear.",
  ),
  SneakerModel(
    id: '2',
    name: "DuramoSL2",
    brand: "Adidas",
    price: 2500,
    sizes: [41, 42, 43],
    colorOptions: [
      SneakerColorOption(
        color: Colors.black,
        image: "assets/adidas/DuramoSL2/black.png",
      ),
      SneakerColorOption(
        color: Colors.yellow,
        image: "assets/adidas/DuramoSL2/yellow.png",
      ),
    ],
    description:
        "Duramo SL 2 shoes are designed for comfort and support, featuring a cushioned midsole and breathable upper. They provide a secure fit and excellent traction, making them suitable for various activities. The stylish design and versatile color options make them a great addition to your casual footwear collection.",
  ),
  SneakerModel(
    id: '3',
    name: "Supernova",
    brand: "Adidas",
    price: 5000,
    sizes: [41, 42, 43],
    colorOptions: [
      SneakerColorOption(
        color: Colors.white,
        image: "assets/adidas/Supernova/white.png",
      ),
    ],
    description:
        "Supernova shoes are engineered for comfort and performance, featuring responsive cushioning and a supportive fit. They are designed to provide a smooth ride for runners of all levels. The sleek design and modern color options make them a stylish choice for both workouts and casual wear.",
  ),
];
List<SneakerModel> hookaModel = [
  SneakerModel(
    id: '1',
    name: "Clifton10",
    brand: "Hooka",
    price: 6000,
    sizes: [40, 41, 42, 43],
    colorOptions: [
      SneakerColorOption(
        color: Colors.black,
        image: "assets/hooka/Clifton10/black.png",
      ),
      SneakerColorOption(
        color: Colors.red,
        image: "assets/hooka/Clifton10/blue.png",
      ),
    ],
    description:
        "Clifton 10 shoes are designed for comfort and cushioning, featuring a plush midsole and breathable upper. They provide a smooth ride and excellent support for runners. The lightweight design and stylish color options make them suitable for both running and casual wear.",
  ),
  SneakerModel(
    id: '2',
    name: "EliteTerrain",
    brand: "Hooka",
    price: 7000,
    sizes: [41, 42, 43],
    colorOptions: [
      SneakerColorOption(
        color: Colors.purpleAccent,
        image: "assets/hooka/EliteTerrain/purple.png",
      ),
    ],
    description:
        "Elite Terrain shoes are built for rugged terrain, featuring a durable outsole and protective upper. They provide excellent traction and stability for off-road adventures. The cushioned midsole ensures comfort during long hikes or runs, making them a reliable choice for outdoor enthusiasts.",
  ),
];
List<SneakerModel> newbalanceModel = [
  SneakerModel(
    id: '1',
    name: "740",
    brand: "New Balance",
    price: 3450,
    sizes: [40, 41, 42, 43],
    colorOptions: [
      SneakerColorOption(
        color: Colors.black,
        image: "assets/newbalance/740/black.png",
      ),
      SneakerColorOption(
        color: Colors.white,
        image: "assets/newbalance/740/white.png",
      ),
    ],
    description:
        "Adizero shoes are designed for speed and performance, featuring lightweight materials and responsive cushioning. They provide a snug fit and excellent traction, making them ideal for runners and athletes. The sleek design and vibrant color options add a stylish touch to your athletic gear.",
  ),
  SneakerModel(
    id: '2',
    name: "Fresh Foam",
    brand: "New Balance",
    price: 5500,
    sizes: [41, 42, 43],
    colorOptions: [
      SneakerColorOption(
        color: Colors.black,
        image: "assets/newbalance/FreshFoam/black.png",
      ),
      SneakerColorOption(
        color: Colors.blue,
        image: "assets/newbalance/FreshFoam/white.png",
      ),
    ],
    description:
        "Fresh Foam shoes are engineered for comfort and support, featuring a plush midsole and breathable upper. They provide a smooth ride and excellent cushioning for runners. The stylish design and modern color options make them suitable for both workouts and casual wear.",
  ),
];
List<SneakerModel> nikeModel = [
  SneakerModel(
    id: '1',
    name: "GiannisImmortality",
    brand: "Nike",
    price: 1000,
    sizes: [40, 41, 42, 43],
    colorOptions: [
      SneakerColorOption(
        color: Colors.black,
        image: "assets/nike/GiannisImmortality/black.png",
      ),
      SneakerColorOption(
        color: Colors.yellowAccent,
        image: "assets/nike/GiannisImmortality/neon.png",
      ),
    ],
    description:
        "Giannis Immortality shoes are designed for basketball performance, featuring responsive cushioning and a supportive fit. They provide excellent traction on the court and are built to withstand the demands of the game. The stylish design and vibrant color options make them a standout choice for athletes.",
  ),
  SneakerModel(
    id: '2',
    name: "MossPoint",
    brand: "Nike",
    price: 5400,
    sizes: [41, 42, 43],
    colorOptions: [
      SneakerColorOption(
        color: Colors.lightBlue,
        image: "assets/nike/MossPoint/light_blue.png",
      ),
    ],
    description:
        "Moss Point shoes are designed for casual wear, featuring a comfortable fit and stylish design. They provide all-day comfort and versatility for various activities. The modern color options and sleek silhouette make them a fashionable choice for everyday wear.",
  ),
];

List<SneakerModel> onModel = [
  SneakerModel(
    id: '1',
    name: "CloudX4",
    brand: "On",
    price: 6500,
    sizes: [40, 41, 42, 43],
    colorOptions: [
      SneakerColorOption(
        color: Colors.black,
        image: "assets/on/CloudX4/black.png",
      ),
      SneakerColorOption(
        color: Colors.yellowAccent,
        image: "assets/on/CloudX4/yellow.png",
      ),
    ],
    description:
        "Cloud X 4 shoes are designed for versatility and performance, featuring a cushioned midsole and breathable upper. They provide a responsive ride for running and training. The lightweight design and stylish color options make them suitable for both workouts and casual wear.",
  ),
];
