import 'dart:async';

import '../model/display/review/review.dart';
import 'repository.dart';

abstract class ReviewRepository extends Repository{
  Future<void> fetchReviewList();
  Future<void> addReview(Review review);
}