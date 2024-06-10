import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../core/theme/constant/app_icons.dart';
import '../../../core/theme/custom/custom_font_weight.dart';
import '../../../core/theme/custom/custom_theme.dart';
import '../../main/component/top_app_bar/widgets/svg_icon_button.dart';
import 'bloc/notification_bloc.dart';

class NotificationPage extends StatelessWidget {

  String _timeAgo(String timestamp) {
    DateTime notificationTime = DateTime.parse(timestamp);
    Duration difference = DateTime.now().difference(notificationTime);

    if (difference.inMinutes < 60) {
      return '${difference.inMinutes}분 전';
    } else if (difference.inHours < 24) {
      return '${difference.inHours}시간 전';
    } else {
      return DateFormat('MM/dd/yyyy').format(notificationTime);
    }
  }

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
        backgroundColor: colorScheme.background,
        centerTitle: true,
      ),
      body: BlocBuilder<NotificationBloc, NotificationState>(
        builder: (context, state) {
          if (state is NotificationLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is NotificationLoaded) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final notification = state.notifications[index];

                return Container(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(notification.imageUrl),
                        radius: 25,
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  notification.title,
                                  style: textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  _timeAgo(notification.timestamp),
                                  style: textTheme.labelLarge?.copyWith(color: Colors.grey),
                                ),
                              ],
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              notification.message,
                              style: textTheme.labelLarge,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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