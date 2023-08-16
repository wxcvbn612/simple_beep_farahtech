class BeepFile {
  final String assetFileName;
  final String? package;

  BeepFile(
    this.assetFileName,
    this.package,
  );
}

extension BeepFileFullPath on BeepFile {
  String get toFullPath {
    final String path =
        package != null ? 'packages/$package/$assetFileName' : "$assetFileName";
    return path;
  }
}
