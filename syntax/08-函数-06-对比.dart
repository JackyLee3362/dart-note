void topFunc() {} // 顶层函数

class A {
  static void staticFunc() {} // 静态方法
  void instanceFunc() {} // 实例方法
}

void main() {
  Function funcVar;

  // 对比顶层函数
  funcVar = topFunc;
  assert(topFunc == funcVar);

  // 对比静态方法
  funcVar = A.staticFunc;
  assert(A.staticFunc == funcVar);

  // 对比实例方法
  var a1 = A(); // A 的实例 #1
  var a2 = A(); // A 的实例 #2
  var other = a2;
  funcVar = a2.instanceFunc;

  // 闭包指向相同实例(#2)，所以相等
  assert(other.instanceFunc == funcVar);

  // 闭包指向不同实例(#2)，所以不相等
  assert(a1.instanceFunc != a2.instanceFunc);
}
