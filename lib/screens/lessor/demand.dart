import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:therental/constants/fontsize.dart' as fS;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:therental/constants/sizes.dart';

import '../../constants/fontsize.dart';

class DemandPage extends StatelessWidget {
  static const List<String> items = ['product 1', 'product 2'];
  static const List<String> publisher = ['x', 'y'];
  static const List<String> tags = ['house& retail', 'clothing'];
  static const List<String> price = ['200', '400'];
  static const List<double> ratings = [3, 5];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
      itemBuilder: (context, index) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.all(2.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(items[index]),
                const SizedBox(width: SIZE_SMALL),
                const FaIcon(
                  FontAwesomeIcons.tags,
                  size: FONTSIZE_MEDIUM,
                  color: Color.fromARGB(255, 0, 121, 107),
                ),
                const SizedBox(
                  width: SIZE_MINIMAL,
                ),
                Text(tags[index]),
                SizedBox(
                  width: SIZE_SMALL,
                ),
                const FaIcon(
                  FontAwesomeIcons.user,
                  size: FONTSIZE_MEDIUM,
                  color: Color.fromARGB(255, 0, 121, 107),
                ),
                const SizedBox(
                  width: SIZE_MINIMAL,
                ),
                Text(publisher[index]),
                const SizedBox(
                  width: SIZE_SMALL,
                ),
                const FaIcon(
                  FontAwesomeIcons.coins,
                  size: FONTSIZE_MEDIUM,
                  color: Color.fromARGB(255, 0, 121, 107),
                ),
                const SizedBox(
                  width: SIZE_MINIMAL,
                ),
                Text(price[index]),
                SizedBox(
                  width: SIZE_SMALL,
                ),
                IconButton(
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.eye,
                      size: FONTSIZE_MEDIUM,
                      color: Color.fromARGB(255, 0, 121, 107),
                    ))
              ],
            ),
          ),
        );
      },
      itemCount: items.length,
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(
          height: 100,
          thickness: 1,
        );
      },
    ));
  }
}
