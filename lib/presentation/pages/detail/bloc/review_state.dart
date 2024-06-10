import 'package:equatable/equatable.dart';

import '../../../../domain/model/display/review/review.dart';

enum ReviewStatus { initial, success, failure }

final class ReviewState extends Equatable {
  final ReviewStatus status;
  final List<Review> reviewList;

  const ReviewState({
    required this.status,
    required this.reviewList,
  });

  ReviewState copyWith({
    ReviewStatus? status,
    List<Review>? reviewList,
  }) {
    return ReviewState(
      status: status ?? this.status,
      reviewList: reviewList ?? this.reviewList,
    );
  }

  @override
  String toString() {
    return '''ReviewState { status: $status, posts: ${reviewList.length} }''';
  }

  @override
  List<Object?> get props => [status, reviewList];
}
