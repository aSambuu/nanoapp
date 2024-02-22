import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start accountingservice Group Code

class AccountingserviceGroup {
  static String baseUrl = 'https://ufinanceapi.fincore.mn';
  static Map<String, String> headers = {
    'content-type': 'application/json;charset=UTF-8',
  };
  static GetbanknamesCall getbanknamesCall = GetbanknamesCall();
  static PostrepaymentCall postrepaymentCall = PostrepaymentCall();
  static SignupCall signupCall = SignupCall();
  static BbsbbanaccountsCall bbsbbanaccountsCall = BbsbbanaccountsCall();
  static GetappuserCall getappuserCall = GetappuserCall();
}

class GetbanknamesCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getbanknames',
      apiUrl:
          '${AccountingserviceGroup.baseUrl}/accounting-service/account/banks',
      callType: ApiCallType.GET,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PostrepaymentCall {
  Future<ApiCallResponse> call({
    String? curdate = '',
    String? gid = '',
    String? authToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "accrualDate": "${curdate}",
  "amount": 0,
  "gid": "${gid}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'postrepayment',
      apiUrl:
          '${AccountingserviceGroup.baseUrl}/accounting-service/loantran/loanaccrual',
      callType: ApiCallType.POST,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SignupCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? pass = '',
    String? repass = '',
  }) async {
    final ffApiRequestBody = '''
{
  "chkPassword": "${repass}",
  "enabled": true,
  "isChange": true,
  "newPassword": "${pass}",
  "username": "${username}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'signup',
      apiUrl: '${AccountingserviceGroup.baseUrl}/accounting-service/user',
      callType: ApiCallType.POST,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class BbsbbanaccountsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'bbsbbanaccounts',
      apiUrl: '${AccountingserviceGroup.baseUrl}/accounting-service/bankaccs',
      callType: ApiCallType.GET,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetappuserCall {
  Future<ApiCallResponse> call({
    String? phone = '',
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getappuser',
      apiUrl:
          '${AccountingserviceGroup.baseUrl}/accounting-service/user/search/findByUsername',
      callType: ApiCallType.GET,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'username': phone,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End accountingservice Group Code

/// Start loanservice Group Code

class LoanserviceGroup {
  static String baseUrl = 'https://ufinanceapi.fincore.mn/loan-service';
  static Map<String, String> headers = {
    'content-type': 'application/json;charset=UTF-8',
  };
  static GetusercifCall getusercifCall = GetusercifCall();
  static GetuserpicCall getuserpicCall = GetuserpicCall();
  static GetproductlistCall getproductlistCall = GetproductlistCall();
  static PostloanrequestCall postloanrequestCall = PostloanrequestCall();
  static GetloanrequestCall getloanrequestCall = GetloanrequestCall();
  static GetloancontractsCall getloancontractsCall = GetloancontractsCall();
  static PostbankaccountCall postbankaccountCall = PostbankaccountCall();
  static PostuserapprovalCall postuserapprovalCall = PostuserapprovalCall();
  static GetloanschedulesCall getloanschedulesCall = GetloanschedulesCall();
  static GetloanschedulefilteredCall getloanschedulefilteredCall =
      GetloanschedulefilteredCall();
  static GetpaymenthistoryCall getpaymenthistoryCall = GetpaymenthistoryCall();
  static DelloanrequestCall delloanrequestCall = DelloanrequestCall();
  static PostattachfileCall postattachfileCall = PostattachfileCall();
  static GetatachedfileCall getatachedfileCall = GetatachedfileCall();
  static GetloanclassCall getloanclassCall = GetloanclassCall();
  static GetaimagnameCall getaimagnameCall = GetaimagnameCall();
  static GetsumnameCall getsumnameCall = GetsumnameCall();
  static GetloanpayinfoCall getloanpayinfoCall = GetloanpayinfoCall();
  static GetuserpiclinkCall getuserpiclinkCall = GetuserpiclinkCall();
  static GetbanklistCall getbanklistCall = GetbanklistCall();
  static GetbanklistfilterCall getbanklistfilterCall = GetbanklistfilterCall();
  static PostfamilyCall postfamilyCall = PostfamilyCall();
  static GetfamilyrelativeCall getfamilyrelativeCall = GetfamilyrelativeCall();
  static GetofferCall getofferCall = GetofferCall();
  static EdituserprofileCall edituserprofileCall = EdituserprofileCall();
  static EdituseraddrCall edituseraddrCall = EdituseraddrCall();
  static ProductlistfilterCall productlistfilterCall = ProductlistfilterCall();
  static PostofferloanreqCall postofferloanreqCall = PostofferloanreqCall();
  static GetloanzoriulaltCall getloanzoriulaltCall = GetloanzoriulaltCall();
  static BankaccfilteredCall bankaccfilteredCall = BankaccfilteredCall();
  static GetfindfirstbankCall getfindfirstbankCall = GetfindfirstbankCall();
  static GetgereedetCall getgereedetCall = GetgereedetCall();
}

class GetusercifCall {
  Future<ApiCallResponse> call({
    String? cif = '',
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getusercif',
      apiUrl: '${LoanserviceGroup.baseUrl}/client/${cif}',
      callType: ApiCallType.GET,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? familyid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.family[:].fid''',
      ));
  int? bankcc(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.bankAccounts[:].ccode''',
      ));
}

class GetuserpicCall {
  Future<ApiCallResponse> call({
    String? lid = '',
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getuserpic',
      apiUrl: '${LoanserviceGroup.baseUrl}/clientpic/${lid}',
      callType: ApiCallType.GET,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetproductlistCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getproductlist',
      apiUrl: '${LoanserviceGroup.baseUrl}/productlimit',
      callType: ApiCallType.GET,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PostloanrequestCall {
  Future<ApiCallResponse> call({
    String? lid = '',
    String? lwdate = '',
    String? zoruilalt = '',
    double? ldun,
    String? enddate = '',
    String? authToken = '',
    String? pid = '',
  }) async {
    final ffApiRequestBody = '''
{
  "pid": "${pid}",
  "lcur": "MNT",
  "lded": "${zoruilalt}",
  "ldun": ${ldun},
  "ltuldate": "${enddate}",
  "lflag": "0",
  "lfocus": "app based",
  "lfocus1": "15",
  "lid": "${lid}",
  "lwdate": "${lwdate}",
  "reserved": "001",
  "vid": "15.1"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'postloanrequest',
      apiUrl: '${LoanserviceGroup.baseUrl}/loanreq',
      callType: ApiCallType.POST,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetloanrequestCall {
  Future<ApiCallResponse> call({
    String? lid = '',
    String? lflag1 = '',
    String? authToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "criteria": [
    {
      "fieldName": "lid",
      "operator": "=",
      "value": "${lid}"
    },
    {
      "fieldName": "lflag",
      "operator": "${lflag1}",
      "value": "2"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getloanrequest',
      apiUrl: '${LoanserviceGroup.baseUrl}/loanreq/filter',
      callType: ApiCallType.POST,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetloancontractsCall {
  Future<ApiCallResponse> call({
    String? lid = '',
    String? talbar = '',
    String? authToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "criteria": [
    {
      "fieldName": "${talbar}",
      "operator": "=",
      "value": "${lid}"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getloancontracts',
      apiUrl: '${LoanserviceGroup.baseUrl}/loancontract/filter',
      callType: ApiCallType.POST,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PostbankaccountCall {
  Future<ApiCallResponse> call({
    String? acc = '',
    String? bankcode = '',
    String? lid = '',
    String? authToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "account": "${acc}",
  "bankcode": "${bankcode}",
  "ccode": 0,
  "first": true,
  "lid": "${lid}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'postbankaccount',
      apiUrl: '${LoanserviceGroup.baseUrl}/bankaccount',
      callType: ApiCallType.POST,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PostuserapprovalCall {
  Future<ApiCallResponse> call({
    String? ccode = '',
    String? ua = '',
    String? authToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "ccode": "${ccode}",
  "user_approve": "${ua}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'postuserapproval',
      apiUrl: '${LoanserviceGroup.baseUrl}/loanreq/user_approve',
      callType: ApiCallType.POST,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetloanschedulesCall {
  Future<ApiCallResponse> call({
    String? gid = '',
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getloanschedules',
      apiUrl: '${LoanserviceGroup.baseUrl}/loanschedule/${gid}',
      callType: ApiCallType.GET,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetloanschedulefilteredCall {
  Future<ApiCallResponse> call({
    String? gid = '',
    String? startdate = '',
    String? enddate = '',
    String? authToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "criteria": [
    {
      "fieldName": "gid",
      "operator": "=",
      "value": "${gid}"
    },
    {
      "fieldName": "duedate",
      "operator": "between",
      "value": "${startdate}",
      "value2": "${enddate}"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getloanschedulefiltered',
      apiUrl: '${LoanserviceGroup.baseUrl}/loanschedule/filter',
      callType: ApiCallType.POST,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetpaymenthistoryCall {
  Future<ApiCallResponse> call({
    String? gid = '',
    String? authToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "criteria": [
    {
      "fieldName": "gid",
      "operator": "=",
      "value": "${gid}"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getpaymenthistory',
      apiUrl: '${LoanserviceGroup.baseUrl}/loantran/filter',
      callType: ApiCallType.POST,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DelloanrequestCall {
  Future<ApiCallResponse> call({
    String? reqid = '',
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'delloanrequest',
      apiUrl: '${LoanserviceGroup.baseUrl}/loanreq/${reqid}',
      callType: ApiCallType.DELETE,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PostattachfileCall {
  Future<ApiCallResponse> call({
    String? relatedid = '',
    String? relatedModel = '',
    FFUploadedFile? file,
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'postattachfile',
      apiUrl: '${LoanserviceGroup.baseUrl}/dms/dmsupload',
      callType: ApiCallType.POST,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'relatedId': relatedid,
        'relatedModel': relatedModel,
        'file': file,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetatachedfileCall {
  Future<ApiCallResponse> call({
    String? ccode = '',
    String? authToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "criteria": [
    {
      "fieldName": "ccode",
      "operator": "=",
      "value": "${ccode}"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getatachedfile',
      apiUrl: '${LoanserviceGroup.baseUrl}/dms/filter',
      callType: ApiCallType.POST,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetloanclassCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getloanclass',
      apiUrl: '${LoanserviceGroup.baseUrl}/classification/${id}',
      callType: ApiCallType.GET,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetaimagnameCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getaimagname',
      apiUrl: '${LoanserviceGroup.baseUrl}/aimag/${id}',
      callType: ApiCallType.GET,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetsumnameCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getsumname',
      apiUrl: '${LoanserviceGroup.baseUrl}/sum/${id}',
      callType: ApiCallType.GET,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetloanpayinfoCall {
  Future<ApiCallResponse> call({
    String? gid = '',
    String? paydate = '',
    String? authToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "gid": "${gid}",
  "pay_date": "${paydate}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getloanpayinfo',
      apiUrl: '${LoanserviceGroup.baseUrl}/loancontract/payment_info',
      callType: ApiCallType.POST,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetuserpiclinkCall {
  Future<ApiCallResponse> call({
    String? cif = '',
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getuserpiclink',
      apiUrl: '${LoanserviceGroup.baseUrl}/client/pic/${cif}',
      callType: ApiCallType.GET,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetbanklistCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getbanklist',
      apiUrl: '${LoanserviceGroup.baseUrl}/banks',
      callType: ApiCallType.GET,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetbanklistfilterCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? bankcode = '',
  }) async {
    final ffApiRequestBody = '''
{
  "criteria": [
    {
      "fieldName": "bankcode",
      "operator": "like",
      "value": "${bankcode}"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getbanklistfilter',
      apiUrl: '${LoanserviceGroup.baseUrl}/banks/filter',
      callType: ApiCallType.POST,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PostfamilyCall {
  Future<ApiCallResponse> call({
    String? lid = '',
    String? fname = '',
    String? lname = '',
    String? reg = '',
    String? addr = '',
    String? phone = '',
    String? income = '',
    int? r1,
    String? authToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "fid": "${lid}",
  "lid": "${lid}",
  "r1": ${r1},
  "r2": "${fname}",
  "r3": "${lname}",
  "r4": "${reg}",
  "r5": "${addr}",
  "r6": "${phone}",
  "r7": "${income}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'postfamily',
      apiUrl: '${LoanserviceGroup.baseUrl}/family',
      callType: ApiCallType.POST,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetfamilyrelativeCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getfamilyrelative',
      apiUrl: '${LoanserviceGroup.baseUrl}/relative',
      callType: ApiCallType.GET,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? rcode(dynamic response) => getJsonField(
        response,
        r'''$._embedded.relative[:].rcode''',
        true,
      ) as List?;
  List? rname(dynamic response) => getJsonField(
        response,
        r'''$._embedded.relative[:].rname''',
        true,
      ) as List?;
}

class GetofferCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? cif = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getoffer',
      apiUrl: '${LoanserviceGroup.baseUrl}/offer/search/findByCif',
      callType: ApiCallType.GET,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'cif': cif,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  double? offerdun(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.amount''',
      ));
}

class EdituserprofileCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? cif = '',
    String? intro = '',
    int? edu,
    int? ajil,
  }) async {
    final ffApiRequestBody = '''
{
  "lintro": "${intro}",
  "edu": ${edu},
  "lubd": ${ajil}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'edituserprofile',
      apiUrl: '${LoanserviceGroup.baseUrl}/client/${cif}',
      callType: ApiCallType.PUT,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class EdituseraddrCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? cif = '',
    String? mail = '',
    String? fb = '',
  }) async {
    final ffApiRequestBody = '''
{
  "facebook": "${fb}",
  "ldemail": "${mail}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'edituseraddr',
      apiUrl: '${LoanserviceGroup.baseUrl}/client/${cif}',
      callType: ApiCallType.PUT,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ProductlistfilterCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? field1 = '',
    String? op1 = '',
    String? val1 = '',
    String? field2 = '',
    String? op2 = '',
    String? val2 = '',
    String? field3 = '',
    String? op3 = '',
    String? val3 = '',
  }) async {
    final ffApiRequestBody = '''
{
  "criteria": [
    {
      "fieldName": "${field1}",
      "operator": "${op1}",
      "value": "${val1}"
    },
    {
      "fieldName": "${field2}",
      "operator": "${op2}",
      "value": "${val2}"
    },
    {
      "fieldName": "${field3}",
      "operator": "${op3}",
      "value": "${val3}"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'productlistfilter',
      apiUrl: '${LoanserviceGroup.baseUrl}/productlimit/filter',
      callType: ApiCallType.POST,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PostofferloanreqCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? cif,
    double? duration,
    int? insDt,
    String? prod = '',
    double? rate,
    double? reqAmount,
    String? vid = '',
  }) async {
    final ffApiRequestBody = '''
{
  "cif": ${cif},
  "duration": ${duration},
  "ins_dt": ${insDt},
  "prod": "${prod}",
  "rate": ${rate},
  "req_amount": ${reqAmount},
  "vid": "${vid}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'postofferloanreq',
      apiUrl: '${LoanserviceGroup.baseUrl}/offer/loanreq',
      callType: ApiCallType.POST,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetloanzoriulaltCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getloanzoriulalt',
      apiUrl: '${LoanserviceGroup.baseUrl}/opgroup',
      callType: ApiCallType.GET,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? opggroups(dynamic response) => getJsonField(
        response,
        r'''$.data.content''',
        true,
      ) as List?;
}

class BankaccfilteredCall {
  Future<ApiCallResponse> call({
    String? cif = '',
    bool? first,
    String? authToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "criteria": [
    {
      "fieldName": "lid",
      "operator": "=",
      "value": "${cif}"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'bankaccfiltered',
      apiUrl: '${LoanserviceGroup.baseUrl}/bankaccount/filter',
      callType: ApiCallType.POST,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetfindfirstbankCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? cif = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getfindfirstbank',
      apiUrl: '${LoanserviceGroup.baseUrl}/bankaccount/search/findFirstByLid',
      callType: ApiCallType.GET,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'lid': cif,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetgereedetCall {
  Future<ApiCallResponse> call({
    int? id,
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getgereedet',
      apiUrl: '${LoanserviceGroup.baseUrl}/loancontract/${id}',
      callType: ApiCallType.GET,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End loanservice Group Code

/// Start authcontroll Group Code

class AuthcontrollGroup {
  static String baseUrl = 'https://ufinanceapi.fincore.mn';
  static Map<String, String> headers = {};
  static UserloginCall userloginCall = UserloginCall();
  static PostotpCall postotpCall = PostotpCall();
  static GetotpCall getotpCall = GetotpCall();
}

class UserloginCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? fbtoken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "firebaseToken": "${fbtoken}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'userlogin',
      apiUrl: '${AuthcontrollGroup.baseUrl}/login',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Basic ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PostotpCall {
  Future<ApiCallResponse> call({
    String? phone = '',
  }) async {
    final ffApiRequestBody = '''
{
  "phone": "${phone}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'postotp',
      apiUrl: '${AuthcontrollGroup.baseUrl}/otp',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetotpCall {
  Future<ApiCallResponse> call({
    String? otp = '',
    String? phone = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getotp',
      apiUrl: '${AuthcontrollGroup.baseUrl}/otp/${otp}/${phone}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End authcontroll Group Code

/// Start DAN Group Code

class DanGroup {
  static String baseUrl = 'https://ufinanceapi.fincore.mn';
  static Map<String, String> headers = {
    'content-type': 'application/json;charset=UTF-8',
  };
  static DanServiceCall danServiceCall = DanServiceCall();
  static AuthorizedCall authorizedCall = AuthorizedCall();
}

class DanServiceCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'DanService',
      apiUrl: '${DanGroup.baseUrl}/dan-service/v1.0/getScope',
      callType: ApiCallType.GET,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AuthorizedCall {
  Future<ApiCallResponse> call({
    String? codeValue = '',
    String? stateValue = '',
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'authorized',
      apiUrl: '${DanGroup.baseUrl}/dan-service/v1.0/authorized',
      callType: ApiCallType.GET,
      headers: {
        'content-type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'code': codeValue,
        'state': stateValue,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End DAN Group Code

/// Start paymentservice Group Code

class PaymentserviceGroup {
  static String baseUrl = 'https://ufinanceapi.fincore.mn/payment-service';
  static Map<String, String> headers = {};
  static QpayCall qpayCall = QpayCall();
  static GetofferfeeCall getofferfeeCall = GetofferfeeCall();
}

class QpayCall {
  Future<ApiCallResponse> call({
    double? amount,
    String? desc = '',
    String? cif = '',
    String? type = '',
    String? authToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "amount": ${amount},
  "cif": "${cif}",
  "desc": "${desc}",
  "request_type": "${type}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'qpay',
      apiUrl: '${PaymentserviceGroup.baseUrl}/qpay/tran/request',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? bankurls(dynamic response) => getJsonField(
        response,
        r'''$.data.urls''',
        true,
      ) as List?;
}

class GetofferfeeCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getofferfee',
      apiUrl: '${PaymentserviceGroup.baseUrl}/qpay/offerfee',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End paymentservice Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
