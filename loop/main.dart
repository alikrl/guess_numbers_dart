void main() {
  ali:
  for (int i = 1; i < 3; i++) {
    for (int k = 1; k < 10; k++) {
      print("$i * $k = ${i * k}");
      if (k == 7) break ali;
    }
  }
}
