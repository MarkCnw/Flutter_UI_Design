
import 'package:ecommerce_app/Models/model.dart';
import 'package:ecommerce_app/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ItemsDetailScreen extends StatefulWidget {
  
  final AppModel eCommerceApp;
  const ItemsDetailScreen({super.key, required this.eCommerceApp});

  @override
  State<ItemsDetailScreen> createState() => _ItemsDetailScreenState();
}

class _ItemsDetailScreenState extends State<ItemsDetailScreen> {
  int currentIndex = 0;
  int selectedColorIndex = 1;
  int selectedSizeIndex = 1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: fbackgroundColor2,
        title: const Text("Detail Product"),
        actions: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              const Icon(
                Iconsax.shopping_bag,
                size: 28,
              ),
              Positioned(
                right: -3,
                top: -5,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Text(
                      "3",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            color: fbackgroundColor2,
            height: size.height * 0.46,
            width: size.width,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Hero(
                      tag: widget.eCommerceApp.image,
                      child: Image.asset(
                        widget.eCommerceApp.image,
                        height: size.height * 0.4,
                        width: size.width * 0.85,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        3,
                        (index) => AnimatedContainer(
                          duration: const Duration(microseconds: 300),
                          margin: const EdgeInsets.only(right: 4),
                          width: 7,
                          height: 7,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: index == currentIndex ? Colors.blue : Colors.grey.shade400,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      "H&M",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black26,
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 17,
                    ),
                    Text(widget.eCommerceApp.rating.toString()),
                    Text(
                      "(${widget.eCommerceApp.review})",
                      style: const TextStyle(
                        color: Colors.black26,
                      ),
                    ),
                    const Spacer(),
                    const Icon(Icons.favorite_border),
                  ],
                ),
                Text(
                  widget.eCommerceApp.name,
                  maxLines: 1,
                  style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16, height: 1.5),
                ),
                Row(
                  children: [
                    Text(
                      "\$${widget.eCommerceApp.price.toString()}.00",
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.pink,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(width: 5),
                    if (widget.eCommerceApp.isCheck == true)
                      Text(
                        "\$${widget.eCommerceApp.price + 255}.00",
                        style: const TextStyle(
                          color: Colors.black26,
                          decoration: TextDecoration.lineThrough,
                          decorationColor: Colors.black26,
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 15),
                Text(
                  "$myDescription1${widget.eCommerceApp.name}$myDescription2",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black38,
                    letterSpacing: -.5,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: size.width / 2.1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "color",
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: widget.eCommerceApp.fcolor.asMap().entries.map((entry) {
                                  final int index = entry.key;
                                  final color = entry.value;
                                  return Padding(
                                    padding: const EdgeInsets.only(top: 10, right: 10),
                                    child: CircleAvatar(
                                      radius: 18,
                                      backgroundColor: color,
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            selectedColorIndex = index;
                                          });
                                        },
                                        child: Icon(
                                          Icons.check,
                                          color: selectedColorIndex == index ? Colors.white : Colors.transparent,
                                        ),
                                      ),
                                    ),
                                  );
                                }).toList(),
                              )
                              )
                        ],
                      ),
                    ),
                    //for size
                    SizedBox(
                      width: size.width / 2.4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // for color,
                          const Text(
                            "Size",
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: widget.eCommerceApp.size
                                  .asMap()
                                  .entries
                                  .map<Widget>((entry) {
                                final int index = entry.key;
                                final String size = entry.value;
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedSizeIndex = index;
                                    });
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                      right: 10,
                                      top: 10,
                                      
                                    ),
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: selectedSizeIndex == index
                                          ? Colors.black
                                          : Colors.white,
                                      border: Border.all(
                                        color: selectedSizeIndex == index
                                            ? Colors.black
                                            : Colors.black12,
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        size,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: selectedSizeIndex == index
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, // ย้ายปุ่มให้อยู่สูงขึ้นจากขอบล่าง
floatingActionButton: FloatingActionButton.extended(
  onPressed: () {},
  backgroundColor: Colors.white,
  elevation: 0,
  label: Padding(
    padding: const EdgeInsets.only(bottom: 20), // เพิ่มระยะห่างจากขอบล่าง
    child: SizedBox(
      width: size.width * 0.9,
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 50, // ความสูงคงที่ของปุ่ม
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Iconsax.shopping_bag,
                    color: Colors.black,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "add to cart",
                    style: TextStyle(
                      color: Colors.black,
                      letterSpacing: -1,
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Container(
              height: 50, // ความสูงคงที่ของปุ่ม
              color: Colors.black,
              child: const Center(
                child: Text(
                  "BUY NOWt",
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: -1,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  ),
),
    );
    
  }
}
