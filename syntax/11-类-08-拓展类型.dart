extension NumberParsing on String {
  int parseInt() {
    return int.parse(this);
  }
}

void main(List<String> args) {
  int.parse('42');
  '42'.parseInt();
}
