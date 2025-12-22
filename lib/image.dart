class Image{
  final int id;
  final int albumId;
  final String title;
  final String url;

  const Image({required this.id, required this.albumId, required this.title, required this.url});

  @override
  bool operator ==(Object other){
    if(identical(this, other)) return true;
      return other is Image && runtimeType == other.runtimeType &&
      id == other.id && albumId == other.albumId && title == other.title
          && url == other.url;
  }

 @override
int get hashCode => Object.hash(id, albumId , title , url);
}

void main(){
  Image image1 = Image(id: 1, albumId: 1, title: 'hello', url: 'http//pdpUniversity.uz');
  Image image2 = Image(id: 3, albumId: 1, title: 'hello', url: 'http//pdpUniversity.uz');
  Image image3 = Image(id: 2, albumId: 1, title: 'hello', url: 'http//pdpUniversity.uz');

  print(image1 == image2);
  print(image1 == image3);
  print(image1 == image1);
}