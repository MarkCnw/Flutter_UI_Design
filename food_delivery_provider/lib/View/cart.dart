  import 'package:animate_do/animate_do.dart';
  import 'package:dotted_line/dotted_line.dart';
  import 'package:flutter/material.dart';
  import 'package:food_delivery_provider/Model/cart_model.dart';
  import 'package:food_delivery_provider/Provider/cart_provider.dart';
  import 'package:food_delivery_provider/consts.dart';
  import 'package:food_delivery_provider/widget/cart_item.dart';
  import 'package:provider/provider.dart';

  class Cart extends StatelessWidget {
    const Cart({super.key});

    @override
    Widget build(BuildContext context) {
      CartProvider cartProvider = Provider.of<CartProvider>(context);
      List<CartModel> carts = cartProvider.carts.reversed.toList();
      return Scaffold(
        backgroundColor: kbgcolor,
        body: SafeArea(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black12,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: kblack,
                        ),
                      ),
                    ),
                  ),
                  
                  const Text(
                    "My Cart",
                    style: TextStyle(
                      color: kblack,
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ...List.generate(
                      carts.length,
                      (index) => Container(
                        height: 145,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(
                          top: index == 0 ? 30 : 0,
                          right: 25,
                          left: 25,
                          bottom: 30,
                        ),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            FadeInUp(
                              delay: Duration(
                                  milliseconds: (index + 1) *
                                      200), 
                              child: CartItems(
                                cart: carts[index],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        "Delivery",
                        style: TextStyle(
                          fontSize: 20,
                          color: kblack,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: DottedLine(
                          dashLength: 10,
                          dashColor: kblack.withOpacity(0.5),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        "\$5.99",
                        style: TextStyle(
                          color: korange,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const Text(
                        "Total Order",
                        style: TextStyle(
                          fontSize: 20,
                          color: kblack,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: DottedLine(
                          dashLength: 10,
                          dashColor: kblack.withOpacity(0.5),
                        ),
                      ),
                      Text(
                        "\$${(cartProvider.totalCarts()).toStringAsFixed(2)}",
                        style: const TextStyle(
                          color: korange,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 40),
                  MaterialButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: kblack,
                    height: 75,
                    minWidth: MediaQuery.of(context).size.width - 50,
                    child: Text(
                      " Pay \$${(cartProvider.totalCarts() + 5.99).toStringAsFixed(2)}",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )),
      );
    }
  }