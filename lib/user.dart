class User
{
  int id;
  String firstName;
  String lastName;
  String email;
  String userName;
  String  phone;
  String password;
  bool isSuperUser;

  User(
      this.id,
      this.firstName,
      this.lastName,
      this.email,
      this.userName,
      this.phone,
      this.password,
      this.isSuperUser
      );

  void displayInfo()
  {
    print('User Info');
    print('user id: $id');
    print('user firstName: $firstName');
    print('user last name: $lastName');
    print('user email: $email');
    print('user phone: $phone');
    print('user password: $password');
    print('user is super user: $isSuperUser');
  }
}