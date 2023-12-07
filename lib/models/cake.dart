class Cake {
 int id;
 String label;
 String imageUrl;
 String stock;

 Cake({
    required this.id,
    required this.label,
    required this.imageUrl,
    required this.stock,
 });

 static List<Cake> samples = [
    Cake(
      id: 1,
      label: 'Cheese Cake',
      imageUrl: 'assets/images/cake_images/cheese_cake.jpg',
      stock: '0',
    ),
    Cake(
      id: 2,
      label: 'Caramel Cake',
      imageUrl: 'assets/images/cake_images/caramel_cake.jpg',
      stock: '0',
    ),
    Cake(
      id: 3,
      label: 'English Cake',
      imageUrl: 'assets/images/cake_images/pexels-polina-tankilevitch-4110006.jpg',
      stock: '0',
    ),
    Cake(
      id: 4,
      label: 'Opera Cake',
      imageUrl: 'assets/images/cake_images/black.jpg',
      stock: '0',
    ),
    Cake(
      id: 5,
      label: 'Black Forest',
      imageUrl: 'assets/images/cake_images/pexels-polina-tankilevitch-4109998.jpg',
      stock: '0',
    ),
    Cake(
      id: 6,
      label: 'Fuji Cake',
      imageUrl: 'assets/images/cake_images/fuji_cake.jpg',
      stock: '0',
    ),
 ];
}