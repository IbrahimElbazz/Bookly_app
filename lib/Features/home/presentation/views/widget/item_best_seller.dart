import 'package:bookly_app/Features/home/presentation/views/widget/Book_rating.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/images.dart';
import 'package:bookly_app/core/utils/style.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ItemBestSeller extends StatelessWidget {
  const ItemBestSeller({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.homeDetailsView);
        },
        child: SizedBox(
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
                      image: const DecorationImage(
                          image: AssetImage(ImageData.test), fit: BoxFit.fill),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: const Text(
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
                  const Row(
                    children: [
                      Text('19.99' r'$', style: Style.title),
                      SizedBox(
                        width: 80,
                      ),
                      BookRating(),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
