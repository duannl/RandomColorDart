class Range {
  int lower;
  int upper;

  Range({required this.lower, required this.upper});
  int get index {
    switch (index) {
      case 0:
        return lower;
      case 1:
        return upper;
      default:
    }
    return 0;
  }

  set index(int value) {
    switch (value) {
      case 0:
        lower = value;
        break;
      case 1:
        upper = value;
        break;
      default:
    }
  }

  static Range? toRange(List<int>? range) {
    if (range == null) return null;
    return Range(
      lower: range[0],
      upper: range[1],
    );
  }
}
