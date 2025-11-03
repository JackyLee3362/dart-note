// 私有变量
String _secret = 'Hello';

// 顶层 getter 获取 _secret
String get secret {
  print('Getter was used!');
  return _secret.toUpperCase();
}

// 顶层 setter 设置 _secret
set secret(String newMessage) {
  print('Setter was used!');
  if (newMessage.isNotEmpty) {
    _secret = newMessage;
    print('New secret: "$newMessage"');
  }
}

void main() {
  // 调用 getter
  print('Current message: $secret');

  // 调用 setter
  secret = 'Dart is fun';

  // 调用 getter(值已更新)
  print('New message: $secret');
}
