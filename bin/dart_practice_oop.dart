import 'dart:convert';

void main(){
 final json = {
   'userId':  1,
   'id': 1,
   'title': 'heelo'
 };

 final user = User.fromJson(json);
 print(user.title);




}

class User
{
  int userId;
  int id;
  String title;


  User.fromJson(Map<String, Object?> json) :
      userId = json['userId'] as int,
      id = json['id'] as int,
      title = json['title'] as String {
    print('json to object');
  }

}