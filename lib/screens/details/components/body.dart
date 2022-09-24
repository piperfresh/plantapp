import 'package:flutter/material.dart';
import 'package:plant_app/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'icon_card.dart';
import 'images_and_icon.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ImagesAndIconCard(size: size),
            TitleAndPrice(
              title: 'Angelica',
              price: 440,
              country: 'Russia',
            ),
            SizedBox(height: kDefaultPadding),
            Row(
              children: <Widget>[
                SizedBox(
                  width: size.width / 2,
                  height: 84,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                        ),
                      ),
                      backgroundColor: kPrimaryColor,
                    ),
                    onPressed: () {},
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Text('Description'),
                  ),
                ),
              ],
            ),
            SizedBox(height: kDefaultPadding * 2),
          ],
        ),
      ),
    );
  }
}
