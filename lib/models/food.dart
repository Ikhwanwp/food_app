part of 'models.dart';

enum FoodType { new_food, popular, recomended }

class Food extends Equatable {
  final int? id;
  final String? picturePath;
  final String? name;
  final String? description;
  final String? ingredients;
  final int? price;
  final double? rate;
  final List<FoodType> types;

  // Buat konstruktor
  const Food(
      {this.id,
      this.picturePath,
      this.name,
      this.description,
      this.ingredients,
      this.price,
      this.rate,
      this.types = const []});

  @override
  List<Object?> get props =>
      [id, picturePath, name, description, ingredients, price, rate];
}

// Buat MockFood (Dummy Food)
List<Food> mockFoods = [
  const Food(
      id: 1,
      picturePath:
          'https://img.qraved.co/v2/image/data/sate-taican-1521087540483-x.png',
      name: 'Sate Taichan 1 Sambal geprek',
      description:
          'Sate taican adalah sate yang berbahan dasar dari daging ayam, dan di taburi dengan saus lavonte',
      ingredients: 'Daging ayam, Bawang Bombay, Saus Lavonte',
      price: 150000,
      rate: 4.2,
      types: [FoodType.new_food, FoodType.popular, FoodType.recomended]),
  const Food(
      id: 2,
      picturePath:
          'https://tempat.com/blog/wp-content/uploads/2020/09/16229019_690672351110677_5442538147529359360_n1-820x1024.jpg',
      name: 'Sate Taichan 2',
      description:
          'Sate taican adalah sate yang berbahan dasar dari daging ayam, dan di taburi dengan saus lavonte',
      ingredients: 'Daging ayam, Bawang Bombay, Saus Lavonte',
      price: 150000,
      rate: 4.2),
  const Food(
      id: 3,
      picturePath:
          'https://img.qraved.co/v2/image/data/Indonesia/Jakarta/Bekasi_Selatan/Sate_Taichan_Goreng_Galaxy/13562109_303343460003644_789483777_n.jpg',
      name: 'Sate Taichan 3',
      description: 'Sate taican adalah sate yang berbahan dasar dari daging ayam, dan di taburi dengan saus lavonte',
      ingredients: 'Daging ayam, Bawang Bombay, Saus Lavonte',
      price: 150000,
      rate: 4.2,
      types: [FoodType.new_food]),
  const Food(
      id: 4,
      picturePath:
          'https://img-global.cpcdn.com/recipes/9c6279ae4e2ce877/751x532cq70/sate-taichan-sambel-jelelet-%F0%9F%94%A5-foto-resep-utama.jpg',
      name: 'Sate Taichan 4',
      description: 'Sate taican adalah sate yang berbahan dasar dari daging ayam, dan di taburi dengan saus lavonte',
      ingredients: 'Daging ayam, Bawang Bombay, Saus Lavonte',
      price: 150000,
      rate: 4.2,
      types: [FoodType.recomended])
];
