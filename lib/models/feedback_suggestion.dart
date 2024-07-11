class FeedbackSuggestion {
  final String id;
  final String subject;
  final String message;
  final DateTime submissionDate;
  final bool isResolved;

  FeedbackSuggestion({
    required this.id,
    required this.subject,
    required this.message,
    required this.submissionDate,
    required this.isResolved,
  });
}
