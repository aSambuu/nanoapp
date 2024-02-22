// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WorkinginfoStruct extends FFFirebaseStruct {
  WorkinginfoStruct({
    String? companyname,
    String? duration,
    String? career,
    String? address,
    String? income,
    String? outcome,
    int? edu,
    int? lubd,
    String? profetion,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _companyname = companyname,
        _duration = duration,
        _career = career,
        _address = address,
        _income = income,
        _outcome = outcome,
        _edu = edu,
        _lubd = lubd,
        _profetion = profetion,
        super(firestoreUtilData);

  // "companyname" field.
  String? _companyname;
  String get companyname => _companyname ?? '';
  set companyname(String? val) => _companyname = val;
  bool hasCompanyname() => _companyname != null;

  // "duration" field.
  String? _duration;
  String get duration => _duration ?? '';
  set duration(String? val) => _duration = val;
  bool hasDuration() => _duration != null;

  // "career" field.
  String? _career;
  String get career => _career ?? '';
  set career(String? val) => _career = val;
  bool hasCareer() => _career != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;
  bool hasAddress() => _address != null;

  // "income" field.
  String? _income;
  String get income => _income ?? '';
  set income(String? val) => _income = val;
  bool hasIncome() => _income != null;

  // "outcome" field.
  String? _outcome;
  String get outcome => _outcome ?? '';
  set outcome(String? val) => _outcome = val;
  bool hasOutcome() => _outcome != null;

  // "edu" field.
  int? _edu;
  int get edu => _edu ?? 0;
  set edu(int? val) => _edu = val;
  void incrementEdu(int amount) => _edu = edu + amount;
  bool hasEdu() => _edu != null;

  // "lubd" field.
  int? _lubd;
  int get lubd => _lubd ?? 0;
  set lubd(int? val) => _lubd = val;
  void incrementLubd(int amount) => _lubd = lubd + amount;
  bool hasLubd() => _lubd != null;

  // "profetion" field.
  String? _profetion;
  String get profetion => _profetion ?? '';
  set profetion(String? val) => _profetion = val;
  bool hasProfetion() => _profetion != null;

  static WorkinginfoStruct fromMap(Map<String, dynamic> data) =>
      WorkinginfoStruct(
        companyname: data['companyname'] as String?,
        duration: data['duration'] as String?,
        career: data['career'] as String?,
        address: data['address'] as String?,
        income: data['income'] as String?,
        outcome: data['outcome'] as String?,
        edu: castToType<int>(data['edu']),
        lubd: castToType<int>(data['lubd']),
        profetion: data['profetion'] as String?,
      );

  static WorkinginfoStruct? maybeFromMap(dynamic data) => data is Map
      ? WorkinginfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'companyname': _companyname,
        'duration': _duration,
        'career': _career,
        'address': _address,
        'income': _income,
        'outcome': _outcome,
        'edu': _edu,
        'lubd': _lubd,
        'profetion': _profetion,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'companyname': serializeParam(
          _companyname,
          ParamType.String,
        ),
        'duration': serializeParam(
          _duration,
          ParamType.String,
        ),
        'career': serializeParam(
          _career,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'income': serializeParam(
          _income,
          ParamType.String,
        ),
        'outcome': serializeParam(
          _outcome,
          ParamType.String,
        ),
        'edu': serializeParam(
          _edu,
          ParamType.int,
        ),
        'lubd': serializeParam(
          _lubd,
          ParamType.int,
        ),
        'profetion': serializeParam(
          _profetion,
          ParamType.String,
        ),
      }.withoutNulls;

  static WorkinginfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      WorkinginfoStruct(
        companyname: deserializeParam(
          data['companyname'],
          ParamType.String,
          false,
        ),
        duration: deserializeParam(
          data['duration'],
          ParamType.String,
          false,
        ),
        career: deserializeParam(
          data['career'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        income: deserializeParam(
          data['income'],
          ParamType.String,
          false,
        ),
        outcome: deserializeParam(
          data['outcome'],
          ParamType.String,
          false,
        ),
        edu: deserializeParam(
          data['edu'],
          ParamType.int,
          false,
        ),
        lubd: deserializeParam(
          data['lubd'],
          ParamType.int,
          false,
        ),
        profetion: deserializeParam(
          data['profetion'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'WorkinginfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WorkinginfoStruct &&
        companyname == other.companyname &&
        duration == other.duration &&
        career == other.career &&
        address == other.address &&
        income == other.income &&
        outcome == other.outcome &&
        edu == other.edu &&
        lubd == other.lubd &&
        profetion == other.profetion;
  }

  @override
  int get hashCode => const ListEquality().hash([
        companyname,
        duration,
        career,
        address,
        income,
        outcome,
        edu,
        lubd,
        profetion
      ]);
}

WorkinginfoStruct createWorkinginfoStruct({
  String? companyname,
  String? duration,
  String? career,
  String? address,
  String? income,
  String? outcome,
  int? edu,
  int? lubd,
  String? profetion,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    WorkinginfoStruct(
      companyname: companyname,
      duration: duration,
      career: career,
      address: address,
      income: income,
      outcome: outcome,
      edu: edu,
      lubd: lubd,
      profetion: profetion,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

WorkinginfoStruct? updateWorkinginfoStruct(
  WorkinginfoStruct? workinginfo, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    workinginfo
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addWorkinginfoStructData(
  Map<String, dynamic> firestoreData,
  WorkinginfoStruct? workinginfo,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (workinginfo == null) {
    return;
  }
  if (workinginfo.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && workinginfo.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final workinginfoData =
      getWorkinginfoFirestoreData(workinginfo, forFieldValue);
  final nestedData =
      workinginfoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = workinginfo.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getWorkinginfoFirestoreData(
  WorkinginfoStruct? workinginfo, [
  bool forFieldValue = false,
]) {
  if (workinginfo == null) {
    return {};
  }
  final firestoreData = mapToFirestore(workinginfo.toMap());

  // Add any Firestore field values
  workinginfo.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getWorkinginfoListFirestoreData(
  List<WorkinginfoStruct>? workinginfos,
) =>
    workinginfos?.map((e) => getWorkinginfoFirestoreData(e, true)).toList() ??
    [];
