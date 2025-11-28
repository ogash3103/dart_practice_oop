import 'dart:math';

void main(){
  int N = 10000;
  doStSonlarniTop(N);

  print("\n---");
  int N2 = 300;
  doStSonlarniTop(N2);
}

int xosBoluvchilarYigindisi(int n){
  if( n <= 1){
    return 0;
  }

  int yigindi = 1;
  int limit = sqrt(n).toInt();

  for(int i = 2; i <= limit; i++){
    if(n % i == 0){
      yigindi += i;
      int ikkichiBuluvchi = n ~/ i;

      if(ikkichiBuluvchi != i){
        yigindi += ikkichiBuluvchi;
      }
    }
  }

  return yigindi;
}

void doStSonlarniTop(int n){
  if (n < 220) {
    print("$n gacha bo'lgan do'st sonlar topilmadi. Eng kichik juftlik (220, 284).");
    return;
  }
  print("✅ $n gacha bo'lgan do'st sonlar juftliklari:");
  Map<int, int> yigindilar = {};

  for(int a = 1; a <= n; a++){
    int b = xosBoluvchilarYigindisi(a);

    if(b <= n && b > a){
      int a_tekshiruv = yigindilar[b] ?? xosBoluvchilarYigindisi(b);

      if (a_tekshiruv == a) {
        print("  - ($a, $b)");
      }

      yigindilar[a] = b;
    }else {
      yigindilar[a] = b;
    }
  }

  if (yigindilar.isEmpty) {
    print("Hech qanday juftlik topilmadi.");
  }

}




