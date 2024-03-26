import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReservationsRecord extends FirestoreRecord {
  ReservationsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Hid" field.
  DocumentReference? _hid;
  DocumentReference? get hid => _hid;
  bool hasHid() => _hid != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "totalCost" field.
  int? _totalCost;
  int get totalCost => _totalCost ?? 0;
  bool hasTotalCost() => _totalCost != null;

  void _initializeFields() {
    _hid = snapshotData['Hid'] as DocumentReference?;
    _date = snapshotData['date'] as DateTime?;
    _totalCost = castToType<int>(snapshotData['totalCost']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reservations');

  static Stream<ReservationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReservationsRecord.fromSnapshot(s));

  static Future<ReservationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReservationsRecord.fromSnapshot(s));

  static ReservationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReservationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReservationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReservationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReservationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReservationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReservationsRecordData({
  DocumentReference? hid,
  DateTime? date,
  int? totalCost,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Hid': hid,
      'date': date,
      'totalCost': totalCost,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReservationsRecordDocumentEquality
    implements Equality<ReservationsRecord> {
  const ReservationsRecordDocumentEquality();

  @override
  bool equals(ReservationsRecord? e1, ReservationsRecord? e2) {
    return e1?.hid == e2?.hid &&
        e1?.date == e2?.date &&
        e1?.totalCost == e2?.totalCost;
  }

  @override
  int hash(ReservationsRecord? e) =>
      const ListEquality().hash([e?.hid, e?.date, e?.totalCost]);

  @override
  bool isValidKey(Object? o) => o is ReservationsRecord;
}
