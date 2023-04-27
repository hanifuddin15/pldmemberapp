class LoginResponseModel {
  int? StatusCode;
  String? Status;
  String? Message;
  Data? data;

  LoginResponseModel({this.StatusCode, this.Status, this.Message, this.data});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    StatusCode = json['StatusCode'];
    Status = json['Status'];
    Message = json['Message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['StatusCode'] = this.StatusCode;
    data['Status'] = this.Status;
    data['Message'] = this.Message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  Message? message;

  Data({this.message});

  Data.fromJson(Map<String, dynamic> json) {
    message =
        json['message'] != null ? new Message.fromJson(json['message']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.message != null) {
      data['message'] = this.message!.toJson();
    }
    return data;
  }
}

class Message {
  int? code;
  String? message;

  Message({this.code, this.message});

  Message.fromJson(Map<String, dynamic> json) {
    code = json['Code'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Code'] = this.code;
    data['message'] = this.message;
    return data;
  }
}
