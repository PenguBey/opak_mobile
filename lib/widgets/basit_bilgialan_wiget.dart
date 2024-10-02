import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:opak_mobile/constants/box_decor_con.dart';
import 'package:opak_mobile/constants/text_style_con.dart';
import '../constants/edge_con.dart';

class BasitBilgialanWiget extends StatelessWidget {
  final String string;
  final String iconData;
  final String? route;
  final Color? color;
  final bool remove;

  const BasitBilgialanWiget({
    super.key,
    required this.string,
    required this.iconData,
    required this.route,
    required this.remove,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecorCon.renkliCard(color),
      margin: EdgeCon.card,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: EdgeCon.raius,
          onTap: () async {
            await Future.delayed(const Duration(milliseconds: 150));
            if (route != null && remove == true) {
              Get.offAllNamed(route!);
            } else if (route != null && remove == false) {
              Get.toNamed(route!);
            }
          },
          child: Padding(
            padding: EdgeCon.card,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(),
                    SvgPicture.asset(
                      iconData,
                      height: 40,
                    ),
                  ],
                ),
                Expanded(
                  child: Text(
                    string,
                    textAlign: TextAlign.right,
                    style: TextStyleCon.miniTitle,
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
