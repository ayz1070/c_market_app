import 'package:c_market_app/presentation/pages/detail/bloc/review_event.dart';
import 'package:c_market_app/presentation/pages/detail/bloc/review_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../domain/model/display/review/review.dart';

class ReviewBloc extends Bloc<ReviewEvent, ReviewState> {
  ReviewBloc()
      : super(const ReviewState(
          status: ReviewStatus.initial,
          reviewList: <Review>[],
        )) {
    on<ReviewFetchEvent>(_fetchReview);
    on<ReviewFetchEvent>(_addReview);
    on<ReviewFetchEvent>(_removeReview);
    on<ReviewFetchEvent>(_editReview);
  }

  void _fetchReview(
      ReviewFetchEvent event, Emitter<ReviewState> emit,) {
    // Todo : DataLayer와 연동

    final reviewList = <Review>[];

    try {
      emit(reviewList.isEmpty
          // 빈 리스트 일 때 처리
          ? state.copyWith()
          // 빈 리스트가 아닐 때 처리
          : state.copyWith(
              status: ReviewStatus.success,
              reviewList: List.of(state.reviewList)..addAll(reviewList),
            ));
    } on Exception catch (e) {

    }
  }

  Future<void> _addReview(
      ReviewFetchEvent event, Emitter<ReviewState> emit) async {}

  Future<void> _removeReview(
      ReviewFetchEvent event, Emitter<ReviewState> emit) async {}

  Future<void> _editReview(
      ReviewFetchEvent event, Emitter<ReviewState> emit) async {}
}
