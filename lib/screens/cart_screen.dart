import 'package:flutter/material.dart';
import 'package:shop_smart/services/assets_manager.dart';
import 'package:shop_smart/widgets/empty_bag.dart';
import 'package:shop_smart/widgets/subtitle_text.dart';

import '../widgets/title_text.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: EmptyBagWidget(
          imagePath: AssetsManager.shoppingBasket,
          title: "Your cart is empty",
          subtitle: "Look like your cart is empty add something and make me happy",
          buttonText: "Shop now"),
    );
  }
}
