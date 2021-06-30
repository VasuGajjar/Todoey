class Task {
  final String name;
  bool isChecked;

  Task(this.name, [this.isChecked = false]);

  void toggle(bool value) {
    isChecked = value;
  }
}
