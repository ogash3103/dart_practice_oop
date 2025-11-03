class PerrinNumber
{
  int n;
  PerrinNumber(this.n);

  int sumPerrins()
  {
    if(n < 0) return 0;
    List<int> perrin = [3, 0, 2];

    if(n < perrin.length)
      {
        return perrin.sublist(0, n + 1).reduce((a, b) => a + b);
      }

    for(int i = 3; i <= n; i++)
      {
        int next = perrin[i - 2] + perrin[i - 3];
        perrin.add(next);
      }
    return perrin.reduce((a,b) => a + b);
  }
}