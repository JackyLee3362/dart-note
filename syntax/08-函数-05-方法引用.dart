void main(List<String> args) {
  var charCodes = [68, 97, 114, 116];
  var buffer = StringBuffer();
  print("✅好的实践");
  // Function tear-off
  charCodes.forEach(print);

  // Method tear-off
  charCodes.forEach(buffer.write);

  print("❗不好的实践");
  // Function lambda
  charCodes.forEach((code) {
    print(code);
  });

  // Method lambda
  charCodes.forEach((code) {
    buffer.write(code);
  });
}
