import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _loginname = await secureStorage.getString('ff_loginname') ?? _loginname;
    });
    await _safeInitAsync(() async {
      _loginsavestatus =
          await secureStorage.getBool('ff_loginsavestatus') ?? _loginsavestatus;
    });
    await _safeInitAsync(() async {
      _userfill = await secureStorage.getBool('ff_userfill') ?? _userfill;
    });
    await _safeInitAsync(() async {
      _cif = await secureStorage.getString('ff_cif') ?? _cif;
    });
    await _safeInitAsync(() async {
      _userpic = await secureStorage.getString('ff_userpic') ?? _userpic;
    });
    await _safeInitAsync(() async {
      _userovog = await secureStorage.getString('ff_userovog') ?? _userovog;
    });
    await _safeInitAsync(() async {
      _username = await secureStorage.getString('ff_username') ?? _username;
    });
    await _safeInitAsync(() async {
      _danstatus = await secureStorage.getBool('ff_danstatus') ?? _danstatus;
    });
    await _safeInitAsync(() async {
      _branchid = await secureStorage.getString('ff_branchid') ?? _branchid;
    });
    await _safeInitAsync(() async {
      _serverlink =
          await secureStorage.getString('ff_serverlink') ?? _serverlink;
    });
    await _safeInitAsync(() async {
      _biometrstatus =
          await secureStorage.getBool('ff_biometrstatus') ?? _biometrstatus;
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_wrokinginfo') != null) {
        try {
          final serializedData =
              await secureStorage.getString('ff_wrokinginfo') ?? '{}';
          _wrokinginfo =
              WorkinginfoStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      _qpaysenderid =
          await secureStorage.getInt('ff_qpaysenderid') ?? _qpaysenderid;
    });
    await _safeInitAsync(() async {
      _bankinfo = await secureStorage.getBool('ff_bankinfo') ?? _bankinfo;
    });
    await _safeInitAsync(() async {
      _familyinfo = await secureStorage.getBool('ff_familyinfo') ?? _familyinfo;
    });
    await _safeInitAsync(() async {
      _workinfo = await secureStorage.getBool('ff_workinfo') ?? _workinfo;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _loginname = '';
  String get loginname => _loginname;
  set loginname(String _value) {
    _loginname = _value;
    secureStorage.setString('ff_loginname', _value);
  }

  void deleteLoginname() {
    secureStorage.delete(key: 'ff_loginname');
  }

  bool _loginsavestatus = false;
  bool get loginsavestatus => _loginsavestatus;
  set loginsavestatus(bool _value) {
    _loginsavestatus = _value;
    secureStorage.setBool('ff_loginsavestatus', _value);
  }

  void deleteLoginsavestatus() {
    secureStorage.delete(key: 'ff_loginsavestatus');
  }

  bool _userfill = true;
  bool get userfill => _userfill;
  set userfill(bool _value) {
    _userfill = _value;
    secureStorage.setBool('ff_userfill', _value);
  }

  void deleteUserfill() {
    secureStorage.delete(key: 'ff_userfill');
  }

  String _cif = '';
  String get cif => _cif;
  set cif(String _value) {
    _cif = _value;
    secureStorage.setString('ff_cif', _value);
  }

  void deleteCif() {
    secureStorage.delete(key: 'ff_cif');
  }

  String _userpic =
      'https://anfbrijigdqukqsyguok.supabase.co/storage/v1/object/public/memberpic/profile/user_def.png';
  String get userpic => _userpic;
  set userpic(String _value) {
    _userpic = _value;
    secureStorage.setString('ff_userpic', _value);
  }

  void deleteUserpic() {
    secureStorage.delete(key: 'ff_userpic');
  }

  String _userovog = ' ';
  String get userovog => _userovog;
  set userovog(String _value) {
    _userovog = _value;
    secureStorage.setString('ff_userovog', _value);
  }

  void deleteUserovog() {
    secureStorage.delete(key: 'ff_userovog');
  }

  String _username = 'Харилцагчаа';
  String get username => _username;
  set username(String _value) {
    _username = _value;
    secureStorage.setString('ff_username', _value);
  }

  void deleteUsername() {
    secureStorage.delete(key: 'ff_username');
  }

  bool _danstatus = false;
  bool get danstatus => _danstatus;
  set danstatus(bool _value) {
    _danstatus = _value;
    secureStorage.setBool('ff_danstatus', _value);
  }

  void deleteDanstatus() {
    secureStorage.delete(key: 'ff_danstatus');
  }

  String _branchid = '100';
  String get branchid => _branchid;
  set branchid(String _value) {
    _branchid = _value;
    secureStorage.setString('ff_branchid', _value);
  }

  void deleteBranchid() {
    secureStorage.delete(key: 'ff_branchid');
  }

  String _serverlink = 'https://ufinanceapi.fincore.mn';
  String get serverlink => _serverlink;
  set serverlink(String _value) {
    _serverlink = _value;
    secureStorage.setString('ff_serverlink', _value);
  }

  void deleteServerlink() {
    secureStorage.delete(key: 'ff_serverlink');
  }

  bool _looding = false;
  bool get looding => _looding;
  set looding(bool _value) {
    _looding = _value;
  }

  bool _biometrstatus = false;
  bool get biometrstatus => _biometrstatus;
  set biometrstatus(bool _value) {
    _biometrstatus = _value;
    secureStorage.setBool('ff_biometrstatus', _value);
  }

  void deleteBiometrstatus() {
    secureStorage.delete(key: 'ff_biometrstatus');
  }

  String _reg = 'Регистрийн дугаар:';
  String get reg => _reg;
  set reg(String _value) {
    _reg = _value;
  }

  String _reg1 = 'Р';
  String get reg1 => _reg1;
  set reg1(String _value) {
    _reg1 = _value;
  }

  String _reg2 = 'Д';
  String get reg2 => _reg2;
  set reg2(String _value) {
    _reg2 = _value;
  }

  WorkinginfoStruct _wrokinginfo = WorkinginfoStruct();
  WorkinginfoStruct get wrokinginfo => _wrokinginfo;
  set wrokinginfo(WorkinginfoStruct _value) {
    _wrokinginfo = _value;
    secureStorage.setString('ff_wrokinginfo', _value.serialize());
  }

  void deleteWrokinginfo() {
    secureStorage.delete(key: 'ff_wrokinginfo');
  }

  void updateWrokinginfoStruct(Function(WorkinginfoStruct) updateFn) {
    updateFn(_wrokinginfo);
    secureStorage.setString('ff_wrokinginfo', _wrokinginfo.serialize());
  }

  int _qpaysenderid = 0;
  int get qpaysenderid => _qpaysenderid;
  set qpaysenderid(int _value) {
    _qpaysenderid = _value;
    secureStorage.setInt('ff_qpaysenderid', _value);
  }

  void deleteQpaysenderid() {
    secureStorage.delete(key: 'ff_qpaysenderid');
  }

  String _token = '';
  String get token => _token;
  set token(String _value) {
    _token = _value;
  }

  bool _bankinfo = false;
  bool get bankinfo => _bankinfo;
  set bankinfo(bool _value) {
    _bankinfo = _value;
    secureStorage.setBool('ff_bankinfo', _value);
  }

  void deleteBankinfo() {
    secureStorage.delete(key: 'ff_bankinfo');
  }

  bool _familyinfo = false;
  bool get familyinfo => _familyinfo;
  set familyinfo(bool _value) {
    _familyinfo = _value;
    secureStorage.setBool('ff_familyinfo', _value);
  }

  void deleteFamilyinfo() {
    secureStorage.delete(key: 'ff_familyinfo');
  }

  bool _workinfo = false;
  bool get workinfo => _workinfo;
  set workinfo(bool _value) {
    _workinfo = _value;
    secureStorage.setBool('ff_workinfo', _value);
  }

  void deleteWorkinfo() {
    secureStorage.delete(key: 'ff_workinfo');
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
