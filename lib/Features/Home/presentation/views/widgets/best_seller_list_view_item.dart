import 'package:bookly_app/Features/Home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125.0,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.red,
                image: const DecorationImage(
                  image: AssetImage(AssetsData.testImage),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(width: 20.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: const Text(
                    'Harry Potter and the Philosopher\'s Stone',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle20,
                  ),
                ),
                const SizedBox(height: 3.0),
                const Text(
                  'F. Scott Fitzgerald',
                  style: Styles.textStyle14,
                ),
                const SizedBox(height: 3.0),
                const Row(
                  children: [
                    Text(
                      '\$19.99',
                      style: Styles.textStyle20,
                    ),
                    Spacer(),
                    BookRating(),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
