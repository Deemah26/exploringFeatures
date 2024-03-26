import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HostsRecord extends FirestoreRecord {
  HostsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "phoneNumber" field.
  int? _phoneNumber;
  int get phoneNumber => _phoneNumber ?? 0;
  bool hasPhoneNumber() => _phoneNumber != null;

  // "password" field.
  int? _password;
  int get password => _password ?? 0;
  bool hasPassword() => _password != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _userName = snapshotData['userName'] as String?;
    _phoneNumber = castToType<int>(snapshotData['phoneNumber']);
    _password = castToType<int>(snapshotData['password']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('hosts');

  static Stream<HostsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HostsRecord.fromSnapshot(s));

  static Future<HostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HostsRecord.fromSnapshot(s));

  static HostsRecord fromSnapshot(DocumentSnapshot snapshot) => HostsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HostsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HostsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HostsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HostsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHostsRecordData({
  String? email,
  String? userName,
  int? phoneNumber,
  int? password,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'userName': userName,
      'phoneNumber': phoneNumber,
      'password': password,
    }.withoutNulls,
  );

  return firestoreData;
}

class HostsRecordDocumentEquality implements Equality<HostsRecord> {
  const HostsRecordDocumentEquality();

  @override
  bool equals(HostsRecord? e1, HostsRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.userName == e2?.userName &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.password == e2?.password;
  }

  @override
  int hash(HostsRecord? e) => const ListEquality()
      .hash([e?.email, e?.userName, e?.phoneNumber, e?.password]);

  @override
  bool isValidKey(Object? o) => o is HostsRecord;
}
