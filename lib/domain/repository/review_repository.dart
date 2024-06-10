import 'dart:async';

import 'repository.dart';

abstract class ReviewRepository extends Repository{
  Future<void> fetchReviewList();
  Future<void> addReview();

}