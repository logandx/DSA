class PrintManager {
  List<String> _queue = [];

  void queuePrintJob(String document) {
    _queue.add(document);
  }

  void run() {
    while (_queue.isNotEmpty) {
      printDocument(_queue.removeAt(0));
    }
  }

  void printDocument(String document) {
    // Code to run the actual printer goes here.
    // For demo purposes, we'll print to the terminal:
    print(document);
  }
}

void main() {
  var printManager = PrintManager();
  printManager.queuePrintJob("Document 1");
  printManager.queuePrintJob("Document 2");
  printManager.run();
}
