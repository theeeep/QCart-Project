import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../utils/custom_theme.dart';


class GridCard extends StatelessWidget {
  final int index;
  final void Function() onPress;
  const GridCard({Key? key, required this.index, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: index % 2 == 0
          ? const EdgeInsets.only(left: 22)
          : const EdgeInsets.only(right: 22),
      decoration: CustomTheme.getCardDecoration(),
      child: GestureDetector(
        onTap: onPress,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(35),
          child: Column(
            children: [
              Expanded(
                  flex: 7,
                  child: SizedBox(
                    width: double.infinity,
                    child: CachedNetworkImage(
                      imageUrl:
                          "https://images.unsplash.com/photo-1555529771-122e5d9f2341?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
                      fit: BoxFit.cover,
                    ),
                  )),
              Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 4),
                        child: Text(
                          "Buyer",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                      Text(
                        "Customer",
                        style: Theme.of(context).textTheme.headlineSmall,
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
