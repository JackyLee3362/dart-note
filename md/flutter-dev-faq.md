---
type: basic-note
title: faq
author: JackyLee
create_date: 2025-11-04
update_date:
tags:
description:
---

## no directionality widget found

原因: 因为 Flutter 不知道文本是 LTR 还是 RTL

解决方案

```dart
Text("Hello", textDirection: TextDirection.ltr)
或者
Directionality(
          textDirection: TextDirection.ltr,
          child: Text('Hello')
)
```

## 参考资料

- [flutter/samples: A collection of Flutter examples and demos](https://github.com/flutter/samples)
