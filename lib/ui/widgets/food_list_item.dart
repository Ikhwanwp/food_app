part of 'widgets.dart';

class FoodListItem extends StatelessWidget {
  final Food food;
  final double? itemWidth;

  // ignore: use_key_in_widget_constructors
  const FoodListItem({required this.food, this.itemWidth});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Foto
        Container(
          width: 60,
          height: 60,
          margin: const EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  image: NetworkImage(food.picturePath!), fit: BoxFit.cover)),
        ),
        // Nama Makanan
        SizedBox(
          width: itemWidth! - 182, //total 182 (60 - 12 - 110 )
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(food.name!,
                  style: blackFontStyle2,
                  maxLines: 1,
                  overflow: TextOverflow.clip),
              Text(
                NumberFormat.currency(
                        symbol: 'IDR', decimalDigits: 0, locale: 'id-ID')
                    .format(food.price),
                style: greyFontStyle.copyWith(fontSize: 13),
              )
            ],
          ),
        ),
        // Rating
        RatingStars(food.rate!)
      ],
    );
  }
}
