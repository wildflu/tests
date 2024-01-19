

class ParePremierNambersController {
  
  bool isPare(int number) {
    return number%2 == 0;
  }


  List<int> allprimeNumbersInNumber(int number) {
  List<int> primeNumbers = [];
  for (var i = 1; i <= number; i++) {
    int j = 2;
    bool isPrime = true;
    while (j<i) {
      if(i%j == 0){
        isPrime = false;
        break;
      }
      j++;
    }
    isPrime ? primeNumbers.add(i):null;
  }
  return primeNumbers;
}

}