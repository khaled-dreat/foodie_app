import 'package:flutter/material.dart';

import '../../../../../../utils/constant/app_image.dart';

class PestBrand extends StatefulWidget {
  const PestBrand({super.key});

  @override
  State<PestBrand> createState() => _PestBrandState();
}

class _PestBrandState extends State<PestBrand> {
  final myitems = [
    Assets.svgOrderCard,
    Assets.svgOrderCard2,
    Assets.svgOrderCard,
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: myitems.map(
          (e) {
            return Padding(
              padding: const EdgeInsets.only(right: 18),
              child: SizedBox(
                width: 280,
                height: 130,
                child: Image.asset(
                  e,
                  fit: BoxFit.fill,
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
