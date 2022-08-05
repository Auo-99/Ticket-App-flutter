import 'dart:html';

import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:sample_project/screens/hotel_view.dart';
import 'package:sample_project/screens/ticket_view.dart';

import '../utils/styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Gap(40),
                //first Row [ 1 ]
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning", style: Styles.headLine3Style,),
                        Gap(5),
                        Text("Book Ticket", style: Styles.headLine1Style,),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: AssetImage(
                            "images/img_1.png"
                            ), 
                            fit: BoxFit.cover,
                            ),
                      ),
                    ),
                  ],
                ),
                Gap(25),
                //The second Row [ 2 ]
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    //color: const Color(0XFF4F6FD),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                  children: [
                    Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0XFFBFC205),),
                    Gap(10),
                    Text("Search", style: TextStyle(color: Colors.grey),),
                  ],
                ),
              ),
              Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Upcoming Flight", style: Styles.headLine2Style,),
                  InkWell(
                    onTap: (){},
                    child: Text("See More", style: Styles.textStyle.copyWith(color: Primary),),
                    ) 
                ],
              ),
                
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [
                ThicketView(),
                ThicketView(),
              ],
            ),
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hotels", style: Styles.headLine2Style,),
                  InkWell(
                    onTap: (){},
                    child: Text("See More", style: Styles.textStyle.copyWith(color: Primary),),
                    ) 
                ],
              ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child : Row(
              children: [
                Padding(padding: const EdgeInsets.only(left: 20.0)),
                HotelView(),
                HotelView(),
                HotelView(),
                HotelView(),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}