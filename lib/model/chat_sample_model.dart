class ChatSampleModel {
  String? name;
  String? time;
  String? message;
  String? messageType;
  bool? attachment;
  String? attamentType;
  List<AttachmentFile>? attachmentFile;

  ChatSampleModel(
      {this.name,
        this.time,
        this.message,
        this.attachment,
        this.attamentType,
        this.messageType,
        this.attachmentFile});

  ChatSampleModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    time = json['time'];
    messageType = json['messageType'];
    message = json['message'];
    attachment = json['attachment'];
    attamentType = json['attamentType'];
    if (json['attachmentFile'] != null) {
      attachmentFile = <AttachmentFile>[];
      json['attachmentFile'].forEach((v) {
        attachmentFile!.add(new AttachmentFile.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['time'] = this.time;
    data['message'] = this.message;
    data['attachment'] = this.attachment;
    data['messageType'] = this.messageType;
    data['attamentType'] = this.attamentType;
    if (this.attachmentFile != null) {
      data['attachmentFile'] =
          this.attachmentFile!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AttachmentFile {
  String? filename;
  String? file;

  AttachmentFile({this.filename, this.file});

  AttachmentFile.fromJson(Map<String, dynamic> json) {
    filename = json['filename'];
    file = json['file'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['filename'] = this.filename;
    data['file'] = this.file;
    return data;
  }
}