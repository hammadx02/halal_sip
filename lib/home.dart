import 'package:flutter/material.dart';
import 'package:halal_sip/detail.dart';
import 'package:halal_sip/resources/colors.dart';
import 'package:halal_sip/resources/images.dart';

import 'resources/Fonts.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20.0),
              RichText(
                text: const TextSpan(
                    text: "Craft Craft\nBeer\nAwards",
                    style: textStyle34px700w,
                    children: [
                      WidgetSpan(child: SizedBox(width: 30.0)),
                      TextSpan(
                        text: "IPA",
                        style: textStyleOrange34px700w,
                      )
                    ]),
              ),
              const SizedBox(height: 50.0),
              _buildItem(
                  context, "01", "Purple Rain", "France", Images.kIconBottle),
              const SizedBox(height: 50.0),
              _buildItem(context, "02", "La Dodo", "", Images.kIconBottle),
              const SizedBox(height: 50.0),
              _buildItem(context, "03", "Gallia", "", Images.kIconBottle),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildItem(BuildContext context, String number, String title,
      String subtitle, String image) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 180.0,
          decoration: const BoxDecoration(
            color: AppColors.colorSecondary,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              bottomLeft: Radius.circular(30.0),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              const SizedBox(width: 30.0),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.colorPrimary.withOpacity(0.1),
                        offset: const Offset(10, 10),
                        blurRadius: 10,
                        spreadRadius: 5)
                  ],
                ),
                child: Hero(
                  tag: "bottle",
                  child: Image.asset(image, height: 290),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 30,
          right: 40.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 55.0,
                width: 50.0,
                decoration: const BoxDecoration(
                  color: AppColors.orange,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child:
                    Center(child: Text(number, style: textStyleWhite18px600w)),
              ),
              const SizedBox(height: 30.0),
              RichText(
                text: TextSpan(
                    text: "$title\n",
                    style: textStyleDarkHeavy24px700,
                    children: [
                      WidgetSpan(child: SizedBox(height: 34)),
                      TextSpan(
                        text: subtitle,
                        style: textStyleSubText18px700w,
                      )
                    ]),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 20,
          right: 30.0,
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailPage()));
            },
            child: Container(
              height: 65.0,
              width: 65.0,
              decoration: const BoxDecoration(
                color: AppColors.colorPrimary,
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(Images.kIconDetail),
              ),
            ),
          ),
        ),
      ],
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      shadowColor: Colors.transparent,
      elevation: 0,
      backgroundColor: Colors.white,
      actions: [
        const SizedBox(width: 40.0),
        Image.asset(Images.kIconTrophy, height: 24.0, width: 24),
        const Spacer(),
        Image.asset(Images.kIconShare, height: 18.0, width: 18),
        const SizedBox(width: 50.0),
        Image.asset(Images.kIconMenu, height: 18.0, width: 24),
        const SizedBox(width: 30.0),
      ],
    );
  }
}
