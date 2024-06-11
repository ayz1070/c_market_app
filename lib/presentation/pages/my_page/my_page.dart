import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/user/user_bloc.dart';
import '../../blocs/user/user_event.dart';
import '../../blocs/user/user_state.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('마이 페이지'),
      ),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          if (state is UserInitial) {
            context.read<UserBloc>().add(GetUserEvent());
            return Center(child: CircularProgressIndicator());
          } else if (state is UserLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is UserLoaded) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(state.user.profilePictureUrl),
                      ),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(state.user.username, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                          Text(state.user.email, style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  ListTile(
                    leading: Icon(Icons.shopping_bag),
                    title: Text('구매 이력'),
                    onTap: () {
                      // Navigate to Order History Screen
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.favorite),
                    title: Text('위시리스트'),
                    onTap: () {
                      // Navigate to Wishlist Screen
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('세팅'),
                    onTap: () {
                      // Navigate to Settings Screen
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text('로그아웃'),
                    onTap: () {
                      // Handle Logout
                    },
                  ),
                ],
              ),
            );
          } else if (state is UserError) {
            return Center(child: Text(state.message));
          }
          return Container();
        },
      ),
    );
  }
}
