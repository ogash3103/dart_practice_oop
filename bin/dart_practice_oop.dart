
void main(){
  print(sonXususiyatiniAniqla(x: 34));
}

String sonXususiyatiniAniqla({int x = 1})
{
  if(x < 1 || x > 9999) {
      return "Xato: Son [1; 9999] oralig'ida bo'lishi kerak. Berilgan qiymat: $x";
  }

  int xonalarSoni = 0;

  if(x >= 1 && x <= 9 ) {
    xonalarSoni = 1;
  } else if(x >= 10 && x <= 99){
    xonalarSoni = 2;
  }else if(x >= 100 && x <= 999){
    xonalarSoni = 3;
  }else{
    xonalarSoni = 4;
  }

  String juftToq;

  if(x % 2 == 0){
    juftToq = 'juft';
  }else {
    juftToq = 'toq';
  }

  String xonalarSoniSatr;
  switch(xonalarSoni){
    case 1: xonalarSoniSatr = 'bir xonali'; break;
    case 2: xonalarSoniSatr = 'ikki xonali'; break;
    case 3: xonalarSoniSatr = 'uch xonali'; break;
    case 4: xonalarSoniSatr = 'turt xonali'; break;
    default: xonalarSoniSatr = 'xonalar soni aniqlanmagan..';
  }

  return "Berilgan son $x: “$xonalarSoniSatr $juftToq son”";
}