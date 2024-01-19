


import 'package:flutter_test/flutter_test.dart';
import 'package:unittest/controller/counter.dart';

void main() {
  group("the counter test", () {
    test("test the increment of the counter", () {
      final counter = Counter();
      counter.increament();
      expect(counter.counter, 1);
    });
    test("test the descrimant of the counter", () {
      final counter = Counter();
      counter.decreament();
      expect(counter.counter, -1);
    });

  });
}