import 'package:flutter/material.dart';
import 'package:movies_app/constants/color.dart';
import 'package:movies_app/data/browseModel/itemsCategoryModel.dart';

class ItemCategoryDetails extends StatelessWidget {
  Results itemResult;
  ItemCategoryDetails({
    super.key,
    required this.itemResult,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                Image.network(
                  'https://image.tmdb.org/t/p/w500${itemResult.posterPath}',
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                const Icon(
                  Icons.star,
                  color: AppColors.goldColor,
                  size: 41,
                ),
                Positioned(
                  left: 12.5,
                  top: 13.5,
                  child: Text(
                    itemResult.voteAverage!.toStringAsFixed(1),
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  itemResult.title!,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(itemResult.overview!,maxLines: 1,overflow: TextOverflow.ellipsis,),
                const Spacer(),
                Text(
                  "(${itemResult.voteCount})",
                  textAlign: TextAlign.end,
                ),
                Text(
                  itemResult.releaseDate!,
                  textAlign: TextAlign.end,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
