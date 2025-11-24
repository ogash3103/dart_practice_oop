

void main(){
  List<int> list1 = [1, 2, 3, 1, 4, 2, 5];
  List<int> result1 = changeToZero(list1);

  print('changeToZero($list1) -> $result1');
}

List<int> changeToZero(List<int> numbers){

  Map<int, int> frequency = {};

  for(var number in numbers)
    {
      frequency[number] = (frequency[number] ?? 0) + 1;
    }

  List<int> result = numbers.map((number){

    if(frequency[number]! > 1){
      return 0;
    }else{
      return number;
    }
  }).toList();

  return result;
}

