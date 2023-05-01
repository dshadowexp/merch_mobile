extension StringExtension on String {
  String get inCaps => '${this[0].toUpperCase()}${this.substring(1)}';
  String get allInCaps => this.toUpperCase();
  String get capitalize =>
      this.isNotEmpty ? "${this[0].toUpperCase()}${this.substring(1)}" : "";
  String get capitalizeFirstofEach => this.isNotEmpty
      ? this.trim().split(new RegExp('\\s+')).map((str) {
          return str.inCaps;
        }).join(" ")
      : "";
}
