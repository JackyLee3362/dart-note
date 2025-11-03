// 主函数
void main() {
  enableFlags();
  enableFlags(bold: true);
  enableFlags(hidden: false);
  enableFlags(bold: true, hidden: false);

  // enableFlagsV2(); // ❌
  enableFlagsV2(bold: true);
  enableFlagsV2(bold: true, hidden: false);

  say('dart', 'hello');
  say('dart', 'hello', 'iphone');
}

// 可选命名参数
void enableFlags({bool? bold, bool? hidden}) {}
void enableFlagsV2({required bool? bold, bool? hidden}) {}

// 可选位置参数
String say(String from, String msg, [String? device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}
