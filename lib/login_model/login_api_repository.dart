import 'package:flutter/material.dart';
import 'package:practice1/api_manager_module/api_base_helper.dart';
import 'package:practice1/api_manager_module/api_manage_model.dart';
import 'package:practice1/login_model/login_api_request_model.dart';
import 'package:practice1/login_model/login_response_model.dart';

class LoginAPIRepository {
  final String _getNewsOpinionSummery =
      "Reports/GetNewsOpinionSummery?formDate=";

  late ApiBaseHelper _helper;
  GlobalKey<FormState>? uikey;

  //LoginAPIRepository Initiallizer
  LoginAPIRepository(GlobalKey<FormState> uikey) {
    this.uikey = uikey;
    this._helper = ApiBaseHelper(uikey);
  }

//
  // Future<DashboardReportSummeryModel> getAllSummeryReport(
  //   String fromDate,
  //   String toDate,
  // ) async {
  //   var apiEndPoint = _getNewsOpinionSummery + '$fromDate&toDate=$toDate';

  //   var requestData = APIManagerModel(
  //       url: apiEndPoint,
  //       method: APIMethod.getMethod,
  //       body: null,
  //       isTokenRequired: true,
  //       header: null);
  //   final response =
  //       await _helper.manageAPI(requestData: requestData, isForLogin: false);

  //   var list = DashboardReportSummeryModel.fromJson(response);
  //   return list;
  // }
  Future<LoginResponseModel> postAPICall(
      String memberIdOrAccountNo, String pin) async {
    // 1. API Manager  Model Making;
    var loginRequestModel = LoginRequestModel(
      Token: '',
      DeviceId:
          "cfRzI3aWz1w:APA91bEeBtKwC_Y_GbMGo0LGDm3egre8u1JNyiK962hILjIuvQ7ntksjt2FdOpW4EW7rEhD8BL0n7l__CBODTrTd5jX2lcDcX6WWGA4nAEtNgsNgeWYGrlZTic00nxeotMyuiVoHEyOS",
      DeviceModel: "J5-OH",
      DeviceName: 'SAMSUNG',
      MemberIdOrAccountNo: memberIdOrAccountNo, //+8801963978074
      Pin: pin, //307125
      // DeviceModel: '24h1j4nmdjsdah',
      // client_id: 'ClientApp',
      // client_secret: 'O1ZeoTA_RV',
      // DeviceToken: 'dxEPit4gfUPLu8YUFpTEDQ:APA91bHp9k8-Y2hX35-cZOK9EOsCLX1h5mTMFCn5YpMyP5i3dJep2725jiJTYuWS0zUVSnM34sYywf4wywshoQBjy8iu8nt9XPdoysM8Vi2hJcbFpA1BIbsCVyLvKL_0tlMzfEv1j4Wc',
    );
    var requestData = APIManagerModel(
        isTokenRequired: false,
        url: "api/Account/Login",
        method: APIMethod.postMethod,
        body: loginRequestModel.toJson(),
        header: null);
    // 2.Api calling using helper class;
    final response =
        await _helper.manageAPI(requestData: requestData, isForLogin: true);

    // 3.APi response JSON convert into model;
    var loginResponse = LoginResponseModel.fromJson(response);

    // 4. return converted model;
    return loginResponse;
  }
}
