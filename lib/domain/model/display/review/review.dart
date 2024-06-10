import 'package:equatable/equatable.dart';

final class Review extends Equatable {
  final int id;
  final String nickName;
  final String content;
  final double score;
  final String date;

  const Review({
    required this.id,
    required this.nickName,
    required this.content,
    required this.score,
    required this.date,
  });

  @override
  List<Object?> get props => [id,nickName,content,score,date];
}
