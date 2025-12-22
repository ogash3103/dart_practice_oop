class Shape{
  static const double pi = 3.14;

  static double area(double a, [double? b]){
    final width = b ?? a;
    return a * width;
  }

  static double circleArea(double radius){
    return pi * radius * radius;
  }

  @override
  void noSuchMethod(Invocation invocation) {
    print('no such method ishga tushdi...');
    print('runTimeType: $runtimeType');

    print("ChaQirilgan member: ${invocation.memberName}");

    if (invocation.positionalArguments.isNotEmpty) {
      print("Positional args: ${invocation.positionalArguments}");
    }
    if (invocation.namedArguments.isNotEmpty) {
      print("Named args: ${invocation.namedArguments}");
    }

    return noSuchMethod(invocation);
  }

}