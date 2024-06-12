import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../domain/model/display/notification/notification.model.dart';

class NotificationItem extends StatelessWidget {
  final AppNotification notification;

  const NotificationItem({required this.notification});

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
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

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
                SizedBox(height: 4.0),
                Text(
                  notification.message,
                  style: textTheme.labelLarge,
                ),
                SizedBox(height: 4.0),
                if (notification.productImages.isNotEmpty)
                  SizedBox(
                    height: 48,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            right: 8.0,
                          ),
                          child: Image.network(
                            notification.productImages[index],
                            width: 48,
                            height: 48,
                          ),
                        );
                      },
                      itemCount: notification.productImages.length,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
