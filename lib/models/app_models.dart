class PersonData {
  final String name;
  final String role;
  final String image;
  final String hobby;
  final String note;

  const PersonData(
    this.name,
    this.role,
    this.image, {
    this.hobby = '-',
    this.note = '-',
  });
}

class VideoData {
  final String title;
  final String youtubeId;
  final String description;

  const VideoData(this.title, this.youtubeId, {this.description = ''});
}

class GalleryData {
  final String caption;
  final String image;

  const GalleryData(this.caption, this.image);
}

class MottoData {
  final String name;
  final String motto;

  const MottoData(this.name, this.motto);
}

class ScheduleRow {
  final String time;
  final String subject;
  final String teacher;
  final String code;

  const ScheduleRow(this.time, this.subject, this.teacher, this.code);
}
