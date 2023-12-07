class Location{
  
  String label;
  String imageUrl;

  Location(
      this.label,
      this.imageUrl,
      );

  static List<Location> samples = [
   (
    Location(
  'Atlas',
  'assets/images/location_images/atlas.jpg',
    )
   ),
    Location(
  '4 Kilo',
  'assets/images/location_images/4kilo.jpg',
  ),
    Location(
  'Sanford',
  'assets/images/location_images/sanford.jpg',
  )
  ];
}