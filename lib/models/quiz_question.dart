class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;
  List<String> getShuffuledAnswer() {
    final shuffuledlist = List.of(answers);
    shuffuledlist.shuffle();
    return shuffuledlist;
  }
}
