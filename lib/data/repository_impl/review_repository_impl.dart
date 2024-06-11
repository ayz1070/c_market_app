import '../../domain/model/display/review/review.dart';
import '../../domain/repository/review_repository.dart';
import '../../presentation/pages/detail/test/test_data.dart';

class ReviewRepositoryImpl extends ReviewRepository{

  @override
  Future<void> addReview(Review review) async {
    // 파이어베이스 작업
    TestData.testReviewList.insert(0, review);
  }

  @override
  Future<void> fetchReviewList() async {
    // 파이어베이스 작업
  }
}