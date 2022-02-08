part of 'widgets.dart';

class FoodCard extends StatelessWidget {
  final Food food;

  // ignore: use_key_in_widget_constructors
  const FoodCard(this.food);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 210,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(spreadRadius: 3, blurRadius: 15, color: Colors.black26)
          ]),
      child: Column(
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                image: DecorationImage(
                    image: NetworkImage(food.picturePath!), fit: BoxFit.cover)),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(12, 12, 12, 1),
            width: 200,
            child: Text(
              food.name!,
              style: blackFontStyle1,
              maxLines: 1,
              overflow: TextOverflow.clip,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: RatingStars(food.rate!),
          )
        ],
      ),
      // appBar: ,
      // body: ,
    );
  }
}
