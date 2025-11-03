import 'package:dart_practice_oop/user.dart';

void main()
{
  var user1 = User(
    1,
    'Og‘abek',
    'Faxriddinov',
    'ogabek@mail.com',
    'ogabek.dev',
    '+998900001122',
    'strongPass123',
    true,
  );

  user1.displayInfo();
}