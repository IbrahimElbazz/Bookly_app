import 'package:bookly_app/core/utils/images.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class item_best_seller extends StatelessWidget {
  const item_best_seller({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              child: AspectRatio(
                aspectRatio: 2.2 / 2.5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(imageData.test), fit: BoxFit.fill),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    'Harry Poter and the Goblet of fire',
                    style: Style.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  'J.K.Rowling',
                  style: TextStyle(color: Colors.white.withOpacity(.5)),
                ),
                Row(
                  children: [
                    Text('19.99' r'$', style: Style.title),
                    SizedBox(
                      width: 80,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: Text(
                        '4.8',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                    ),
                    Text('(2390)',
                        style: TextStyle(color: Colors.white.withOpacity(.5)))
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
