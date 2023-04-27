class LoginRequestModel {
  String? Token;
  String? DeviceId;
  String? DeviceModel;
  String? DeviceName;
  String? MemberIdOrAccountNo;
  String? Pin;

  LoginRequestModel(
      {this.Token,
      this.DeviceId,
      this.DeviceModel,
      this.DeviceName,
      this.MemberIdOrAccountNo,
      this.Pin});

  LoginRequestModel.fromJson(Map<String, dynamic> json) {
    Token = json['Token'];
    DeviceId = json['DeviceId'];
    DeviceModel = json['DeviceModel'];
    DeviceName = json['DeviceName'];
    MemberIdOrAccountNo = json['MemberIdOrAccountNo'];
    Pin = json['Pin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Token'] = this.Token;
    data['DeviceId'] = this.DeviceId;
    data['DeviceModel'] = this.DeviceModel;
    data['DeviceName'] = this.DeviceName;
    data['MemberIdOrAccountNo'] = this.MemberIdOrAccountNo;
    data['Pin'] = this.Pin;
    return data;
  }
}
