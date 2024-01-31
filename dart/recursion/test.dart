void countDown(int sec) {
  for (var i = sec; i >= 0; i--) {
    print(i);
  }
}

void main(List<String> args) {
  countDown(10);
}
