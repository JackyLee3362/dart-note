---
type: basic-note
title: pub
author: JackyLee
create_time: 2025-11-05
update_time:
tags:
description:
---

在 publspec.yaml 中加，添加完后执行

```yml
dependencies:
  flutter:
    sdk: flutter
  http: ^1.2.0
  #   可以不写或者写 any 表示任意版本
  provider: ^6.0.5
```

```sh
# 解析依赖
flutter pub get

# 或者直接添加依赖
flutter pub add provider

# 升级依赖
flutter pub upgrade

# 查看依赖树
flutter pub deps
```

## 参考资料
