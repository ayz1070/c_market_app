import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/constant/app_icons.dart';
import '../../../core/theme/custom/custom_font_weight.dart';
import '../../../core/theme/custom/custom_theme.dart';
import '../../main/component/top_app_bar/widgets/svg_icon_button.dart';
import 'bloc/notification_bloc.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: SvgIconButton(
            icon: AppIcons.close,
            color: colorScheme.contentPrimary,
            onPressed: () {
              if (context.canPop()) {
                context.pop();
              }
            },
          ),
        ),
        title: Text(
          '알림',
          style: textTheme.titleMedium.semiBold
              ?.copyWith(color: colorScheme.contentPrimary),
        ),
      ),
      body: BlocBuilder<NotificationBloc, NotificationState>(
        builder: (context, state) {
          if (state is NotificationLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is NotificationLoaded) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final notification = state.notifications[index];

                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(notification.imageUrl),
                  ),
                  title: Text(notification.title),
                  subtitle: Text(notification.message),
                  trailing: Text(notification.timestamp),
                );
              },
              itemCount: state.notifications.length,
            );
          } else if (state is NotificationError) {
            return Center(child: Text(state.message));
          } else {
            return Center(child: Text('No notifications'));
          }
        },
      ),
    );
  }
}
