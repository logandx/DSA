import 'dart:io';

void findDirectories(String path) {
  var directory = Directory(path);
  if (directory.existsSync()) {
    directory.listSync().forEach((entity) {
      if (entity is Directory) {
        print(entity.path);
        findDirectories(entity.path); // Recursively call findDirectories for subdirectories
      }
    });
  }
}

void main() {
  // Call the findDirectories method on the current directory:
  findDirectories(".");
}
