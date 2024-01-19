

import 'package:flutter_test/flutter_test.dart';
import 'package:unittest/controller/parenumbers_controller.dart';

void main() {
  test("test the return of the function", (){
    ParePremierNambersController controller = ParePremierNambersController();
    
    List<int> prenums = controller.allprimeNumbersInNumber(4);
    expect(prenums, [1,2,3]);
  });
}