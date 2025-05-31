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
        image: "assets/adidas/adizeross/black.png",
      ),
      SneakerColorOption(
        color: Colors.yellow,
        image: "assets/adidas/adizeross/yellow.png",
      ),
    ],
    description:
        "Adizero shoes are designed for speed and performance, featuring lightweight materials and responsive cushioning. They offer a snug fit and excellent traction, making them perfect for competitive runners and athletes who need an edge.",
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
        image: "assets/adidas/duramosl2/black.png",
      ),
      SneakerColorOption(
        color: Colors.yellow,
        image: "assets/adidas/duramosl2/yellow.png",
      ),
    ],
    description:
        "Duramo SL 2 shoes are built for comfort and everyday support, featuring a cushioned midsole and breathable upper mesh. They ensure a secure fit and smooth ride, making them ideal for running, gym workouts, or casual outings.",
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
        image: "assets/adidas/supernova/white.png",
      ),
    ],
    description:
        "Supernova shoes combine comfort and performance, with responsive cushioning and a supportive fit for long-distance runs. Their modern design and premium materials make them a versatile choice for both sport and casual wear.",
  ),
];

List<SneakerModel> hookaModel = [
  SneakerModel(
    id: '1',
    name: "Clifton10",
    brand: "Hoka",
    price: 6000,
    sizes: [40, 41, 42, 43],
    colorOptions: [
      SneakerColorOption(
        color: Colors.black,
        image: "assets/hooka/clifton10/black.png",
      ),
      SneakerColorOption(
        color: Colors.red,
        image: "assets/hooka/clifton10/blue.png",
      ),
    ],
    description:
        "Clifton 10 shoes are known for their ultra-plush cushioning and lightweight feel. Perfect for runners seeking a soft, smooth ride, they feature a breathable upper and an updated midsole for long-lasting comfort on every stride.",
  ),
  SneakerModel(
    id: '2',
    name: "EliteTerrain",
    brand: "Hoka",
    price: 7000,
    sizes: [41, 42, 43],
    colorOptions: [
      SneakerColorOption(
        color: Colors.purpleAccent,
        image: "assets/hooka/eliteterrain/purple.png",
      ),
    ],
    description:
        "Elite Terrain shoes are built for rugged trails, offering a durable outsole with aggressive grip and a protective upper. They deliver exceptional stability and comfort on off-road terrain, making them ideal for trail runners and hikers.",
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
        "New Balance 740 shoes focus on stability and support, featuring a cushioned midsole and durable construction. Perfect for athletes and casual wearers alike, they combine timeless style with reliable performance.",
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
        image: "assets/newbalance/freshfoam/black.png",
      ),
      SneakerColorOption(
        color: Colors.blue,
        image: "assets/newbalance/freshfoam/white.png",
      ),
    ],
    description:
        "Fresh Foam shoes deliver plush cushioning and smooth transitions, designed to keep runners comfortable over long distances. With a breathable upper and modern design, they are a top pick for daily runs and casual wear.",
  ),
];

List<SneakerModel> nikeModel = [
  SneakerModel(
    id: '1',
    name: "Giannis Immortality",
    brand: "Nike",
    price: 1000,
    sizes: [40, 41, 42, 43],
    colorOptions: [
      SneakerColorOption(
        color: Colors.black,
        image: "assets/nike/giannis/black.png",
      ),
      SneakerColorOption(
        color: Colors.yellowAccent,
        image: "assets/nike/giannis/neon.png",
      ),
    ],
    description:
        "Giannis Immortality shoes are crafted for explosive basketball performance, featuring responsive cushioning and a secure fit. Built to handle fast cuts and quick moves, they offer excellent grip and standout style on the court.",
  ),
  SneakerModel(
    id: '2',
    name: "Moss Point",
    brand: "Nike",
    price: 5400,
    sizes: [41, 42, 43],
    colorOptions: [
      SneakerColorOption(
        color: Colors.lightBlue,
        image: "assets/nike/mosspoint/light_blue.png",
      ),
    ],
    description:
        "Moss Point shoes blend streetwear style with everyday comfort. Featuring a lightweight design and cushioned sole, they are perfect for all-day wear, whether you’re out on the town or relaxing at home.",
  ),
];

List<SneakerModel> onModel = [
  SneakerModel(
    id: '1',
    name: "Cloud X 4",
    brand: "On",
    price: 6500,
    sizes: [40, 41, 42, 43],
    colorOptions: [
      SneakerColorOption(
        color: Colors.black,
        image: "assets/on/cloudx4/black.png",
      ),
      SneakerColorOption(
        color: Colors.yellowAccent,
        image: "assets/on/cloudx4/yellow.png",
      ),
    ],
    description:
        "Cloud X 4 shoes are engineered for versatile performance, combining responsive cushioning with a flexible design. Ideal for running, training, or casual wear, they offer a lightweight feel and sleek, modern look.",
  ),
];
