void main(){
  int Function(int) bunny = bunnyEars;
  print(bunny(5));

}

int bunnyEars(int bunnies){
  if(bunnies == 0){
    return 0;
  }

  return 2 + bunnyEars(bunnies - 1);
}