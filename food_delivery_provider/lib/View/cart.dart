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
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "My Cart",style: TextStyle(color: kblack,fontWeight: FontWeight.w600,fontSize: 22),
                  ),
                  SizedBox()
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical ,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ...List.generate(carts.length, (index)=> Container(
                      height: 145,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(
                        top: index == 0 ? 30 : 0,
                        right: 25,
                        left: 25,
                        bottom: 30
                        ),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            CartItems(cart: carts[index],
                            ),
                          ],
                        ),
                    )
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
