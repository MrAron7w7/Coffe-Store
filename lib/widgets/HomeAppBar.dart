import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Agregamos color al appbar, un pading del contenedor
      // y un icono
      color: Colors.brown,
      padding: const EdgeInsets.all(20),
      child: const Row(
        children: [
          Icon(
            Icons.sort,
            color: Colors.white,
            size: 27,
          ),
          // Agregamos texto padding y estilo al titulo
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Coffe Store",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Spacer(),
          badges.Badge(
            badgeContent: Text(
              "3",
              style: TextStyle(color: Colors.white),
            ),
            child: InkWell(
              child: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.white,
                size: 25,
              ),
            ),
          )
        ],
      ),
    );
  }
}
