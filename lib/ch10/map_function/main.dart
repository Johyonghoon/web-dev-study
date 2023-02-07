void main() {
  final number = 123;

  print(number.toString().split('').map((x) => '$x.jpg').toList());

  final numbers = [
    123,
    456,
    789,
  ];

  print(numbers.map(
      (x) => x.toString().split('').map((y) => '$y.jpg').toList()).toList());

  print(numbers.asMap().entries.toList()[0].key);
}
