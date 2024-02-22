import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QpayStatusRecord extends FirestoreRecord {
  QpayStatusRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "updatedOn" field.
  String? _updatedOn;
  String get updatedOn => _updatedOn ?? '';
  bool hasUpdatedOn() => _updatedOn != null;

  // "invoice" field.
  int? _invoice;
  int get invoice => _invoice ?? 0;
  bool hasInvoice() => _invoice != null;

  // "cif" field.
  int? _cif;
  int get cif => _cif ?? 0;
  bool hasCif() => _cif != null;

  void _initializeFields() {
    _status = snapshotData['status'] as String?;
    _updatedOn = snapshotData['updatedOn'] as String?;
    _invoice = castToType<int>(snapshotData['invoice']);
    _cif = castToType<int>(snapshotData['cif']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('qpayStatus');

  static Stream<QpayStatusRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QpayStatusRecord.fromSnapshot(s));

  static Future<QpayStatusRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QpayStatusRecord.fromSnapshot(s));

  static QpayStatusRecord fromSnapshot(DocumentSnapshot snapshot) =>
      QpayStatusRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QpayStatusRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QpayStatusRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QpayStatusRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QpayStatusRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQpayStatusRecordData({
  String? status,
  String? updatedOn,
  int? invoice,
  int? cif,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'status': status,
      'updatedOn': updatedOn,
      'invoice': invoice,
      'cif': cif,
    }.withoutNulls,
  );

  return firestoreData;
}

class QpayStatusRecordDocumentEquality implements Equality<QpayStatusRecord> {
  const QpayStatusRecordDocumentEquality();

  @override
  bool equals(QpayStatusRecord? e1, QpayStatusRecord? e2) {
    return e1?.status == e2?.status &&
        e1?.updatedOn == e2?.updatedOn &&
        e1?.invoice == e2?.invoice &&
        e1?.cif == e2?.cif;
  }

  @override
  int hash(QpayStatusRecord? e) =>
      const ListEquality().hash([e?.status, e?.updatedOn, e?.invoice, e?.cif]);

  @override
  bool isValidKey(Object? o) => o is QpayStatusRecord;
}
