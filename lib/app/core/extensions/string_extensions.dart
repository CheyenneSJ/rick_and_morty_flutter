extension StringExtensions on String {
  int get getId {
    final matches = RegExp(r'\d+').allMatches(this);
    final lastMatch = matches.lastOrNull;
    if (lastMatch != null) {
      return int.parse(lastMatch.group(0) ?? '0');
    }
    return 0;
  }
}
