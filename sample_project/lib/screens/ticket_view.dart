import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:sample_project/reusabe_widget/rounded_container.dart';
import 'package:sample_project/utils/app_layout.dart';
import 'package:sample_project/utils/styles.dart';

class ThicketView extends StatelessWidget {
  const ThicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            //Container for the blue part of the Thicket.
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                  ),
                  color: Color(0XFF526799),
              ),
              child: Column(
                children: [
                  Row(
                children: [
                  Text("NYC", style: Styles.headLine3Style.copyWith(color: Colors.white)),
                  Expanded(child: Container()),
                  RoundedConatainer(),
                 
                  Expanded(child: Stack(
                    children: [
                      SizedBox(
                      height: 24,
                      child: LayoutBuilder(
                        builder: (BuildContext context, BoxConstraints constraints,){
                          print("The Width is ${constraints.constrainWidth()}");
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: 
                              //List.generate((constraints.constrainWidth()/6).floor(), (index) => SizedBox())
                              List.generate((constraints.constrainWidth()/6).floor(), (index) => const SizedBox(
                                width: 3.0,
                                height: 1.0,
                                child: DecoratedBox(decoration: BoxDecoration(
                                  color: Colors.white,
                                ),),
                              ),
                            ),
                          );
                        }
                      ),
                    ),

                    Transform.rotate(
                    angle: 1.5,
                    child: const Center(child: 
                    Icon(Icons.local_airport_rounded, color: Colors.white,),
                  ),),
                    ],
                  ),
                  ),
                  RoundedConatainer(),
                   Expanded(child: Container()),
                  Text("LDN", style: Styles.headLine3Style.copyWith(color: Colors.white)),
                ],
              ),
              const Gap(3),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 100,
                    child: Text("New-York", style: Styles.headLine4Style.copyWith(color: Colors.white),),
                  ),
                  Text("08h 30min", style: Styles.headLine4Style.copyWith(color: Colors.white),),
                  SizedBox(
                    width: 100,
                    child: Text("London", style: Styles.headLine4Style.copyWith(color: Colors.white), textAlign: TextAlign.end,),
                  ),
                ],
              ),
                ],
              )
            ),

            //Container for the orange part of the thicket
            Container(
              color: Styles.oragneColor,//Color(0xfff37b76),
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                    height: 20,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      ),
                  ),
                  Expanded(child: Padding(padding: EdgeInsets.all(12.0,),
                   child: LayoutBuilder(
                    builder: (context, constraints) {
                      return Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                          width: 5,
                          height: 1,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                          ),
                        )),
                        );
                    },
                  )),
                   ), 
                  const SizedBox(
                    width: 10,
                    height: 20,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      ),
                  ),
                ],
              ),
            ),
            
            //the bottom part of the oragnt thicket
            Container(
              padding: const EdgeInsets.only(top: 10, left: 16, right: 16, bottom: 16),
              decoration: BoxDecoration(
                color: Styles.oragneColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("5 May", style: Styles.headLine3Style.copyWith(color: Colors.white),),
                    const Gap(3),
                    Text("Date", style: Styles.headLine4Style.copyWith(color: Colors.white),),                    
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("08:00 AM", style: Styles.headLine3Style.copyWith(color: Colors.white),),
                    const Gap(3),
                    Text("Departure Time", style: Styles.headLine4Style.copyWith(color: Colors.white),),                    
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("23", style: Styles.headLine3Style.copyWith(color: Colors.white),),
                    const Gap(3),
                    Text("Number", style: Styles.headLine4Style.copyWith(color: Colors.white),),                    
                  ],
                )
              ],
             ),
            ),
          ],
        ),
      ),
    );
  }
}




