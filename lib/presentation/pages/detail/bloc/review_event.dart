import 'package:equatable/equatable.dart';

sealed class ReviewEvent extends Equatable{
  @override
  List<Object?> get props => [];
}

final class ReviewAddEvent extends ReviewEvent{}
final class ReviewFetchEvent extends ReviewEvent{}
final class ReviewRemoveEvent extends ReviewEvent{}
final class ReviewEditEvent extends ReviewEvent{}