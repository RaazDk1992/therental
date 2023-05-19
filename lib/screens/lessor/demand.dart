import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:therental/constants/fontsize.dart' as fS;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:therental/constants/sizes.dart';

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
        return SafeArea(
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
                  color: Color.fromARGB(255, 0, 121, 107),
                ),
                const SizedBox(
                  width: SIZE_MINIMAL,
                ),
                Text(publisher[index]),
                RatingBar.builder(
                  ignoreGestures: true,
                  initialRating: ratings[index],
                  minRating: 0,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 15,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    // print(rating);
                  },
                ),
                const SizedBox(
                  width: SIZE_SMALL,
                ),
                const FaIcon(
                  FontAwesomeIcons.coins,
                  color: Color.fromARGB(255, 0, 121, 107),
                ),
                const SizedBox(
                  width: SIZE_MINIMAL,
                ),
                Text(price[index]),
                SizedBox(
                  width: SIZE_SMALL,
                ),
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
