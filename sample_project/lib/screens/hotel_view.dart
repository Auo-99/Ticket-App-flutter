import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:sample_project/utils/app_layout.dart';
import 'package:sample_project/utils/styles.dart';

class HotelView extends StatelessWidget {
  const HotelView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      width: size.width*0.6,
      height: 350,
      decoration: BoxDecoration(
        color: Styles.PrimaryColor,
        borderRadius: BorderRadius.circular(21),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(
           height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(21),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "images/one.png"
              ),
            ),
          ),
        ),
        const Gap(10),
        Text("Hotel n 1", style: Styles.headLine2Style.copyWith(color: Styles.kakiColor),),
        const Gap(10),
        Text("London", style: Styles.headLine3Style.copyWith(color: Colors.white),),
        const Gap(10),
        Text("\$ 40 Per Night", style: Styles.headLine1Style.copyWith(color: Styles.kakiColor),),
      ]),
    );
  }
}