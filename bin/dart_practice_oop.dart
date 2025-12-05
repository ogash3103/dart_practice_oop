import 'package:dart_practice_oop/MODEL/Photo.dart';

final photosJson = [
  {
    "albumId": 1,
    "id": 1,
    "title": "accusamus beatae ad facilis cum similique qui sunt",
    "url": "https://via.placeholder.com/600/92c952",
    "thumbnailUrl": "https://via.placeholder.com/150/92c952"
  },
  {
    "albumId": 1,
    "id": 2,
    "title": "reprehenderit est deserunt velit ipsam",
    "url": "https://via.placeholder.com/600/771796",
    "thumbnailUrl": "https://via.placeholder.com/150/771796"
  },
  {
    "albumId": 1,
    "id": 3,
    "title": "officia porro iure quia iusto qui ipsa ut modi",
    "url": "https://via.placeholder.com/600/24f355",
    "thumbnailUrl": "https://via.placeholder.com/150/24f355"
  }
];


void main() {
  // JSON ro‘yxatini obyektga aylantiramiz
  List<Photo> photoList = photosJson.map((json) => Photo.fromJson(json)).toList();

  // Tekshirish uchun ekranga chiqaramiz
  for (var photo in photoList) {
    print(photo);
  }
}
