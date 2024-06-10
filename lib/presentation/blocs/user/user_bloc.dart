import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/usecase/get_user_data.dart';
import 'user_event.dart';
import 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final GetUserData getUserData;

  UserBloc({required this.getUserData}) : super(UserInitial()) {
    on<GetUserEvent>((event, emit) async {
      emit(UserLoading());

      try {
        final user = await getUserData();
        emit(UserLoaded(user));
      } catch (e) {
        emit(UserError('Failed to load user data'));
      }
    });
  }
}
