import 'package:timeago/timeago.dart' as timeago;

extension TimeAgo on DateTime {
  String toTimeAgo() {
    try {
      // final now = DateTime.now();
      // const diffDate = now - time;
      timeago.setLocaleMessages('vi', timeago.ViMessages());
      return timeago.format(this, locale: 'vi', allowFromNow: true);
    } catch (e) {
      return '';
    }
  }
}
