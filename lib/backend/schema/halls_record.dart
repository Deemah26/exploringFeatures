import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HallsRecord extends FirestoreRecord {
  HallsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Hname" field.
  String? _hname;
  String get hname => _hname ?? '';
  bool hasHname() => _hname != null;

  // "HallMinimumCapacity" field.
  int? _hallMinimumCapacity;
  int get hallMinimumCapacity => _hallMinimumCapacity ?? 0;
  bool hasHallMinimumCapacity() => _hallMinimumCapacity != null;

  // "capacity" field.
  int? _capacity;
  int get capacity => _capacity ?? 0;
  bool hasCapacity() => _capacity != null;

  // "contactNumber" field.
  String? _contactNumber;
  String get contactNumber => _contactNumber ?? '';
  bool hasContactNumber() => _contactNumber != null;

  // "hall_image" field.
  String? _hallImage;
  String get hallImage => _hallImage ?? '';
  bool hasHallImage() => _hallImage != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "pricePerPerson" field.
  int? _pricePerPerson;
  int get pricePerPerson => _pricePerPerson ?? 0;
  bool hasPricePerPerson() => _pricePerPerson != null;

  void _initializeFields() {
    _hname = snapshotData['Hname'] as String?;
    _hallMinimumCapacity = castToType<int>(snapshotData['HallMinimumCapacity']);
    _capacity = castToType<int>(snapshotData['capacity']);
    _contactNumber = snapshotData['contactNumber'] as String?;
    _hallImage = snapshotData['hall_image'] as String?;
    _location = snapshotData['location'] as String?;
    _pricePerPerson = castToType<int>(snapshotData['pricePerPerson']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('halls');

  static Stream<HallsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HallsRecord.fromSnapshot(s));

  static Future<HallsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HallsRecord.fromSnapshot(s));

  static HallsRecord fromSnapshot(DocumentSnapshot snapshot) => HallsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HallsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HallsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HallsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HallsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHallsRecordData({
  String? hname,
  int? hallMinimumCapacity,
  int? capacity,
  String? contactNumber,
  String? hallImage,
  String? location,
  int? pricePerPerson,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Hname': hname,
      'HallMinimumCapacity': hallMinimumCapacity,
      'capacity': capacity,
      'contactNumber': contactNumber,
      'hall_image': hallImage,
      'location': location,
      'pricePerPerson': pricePerPerson,
    }.withoutNulls,
  );

  return firestoreData;
}

class HallsRecordDocumentEquality implements Equality<HallsRecord> {
  const HallsRecordDocumentEquality();

  @override
  bool equals(HallsRecord? e1, HallsRecord? e2) {
    return e1?.hname == e2?.hname &&
        e1?.hallMinimumCapacity == e2?.hallMinimumCapacity &&
        e1?.capacity == e2?.capacity &&
        e1?.contactNumber == e2?.contactNumber &&
        e1?.hallImage == e2?.hallImage &&
        e1?.location == e2?.location &&
        e1?.pricePerPerson == e2?.pricePerPerson;
  }

  @override
  int hash(HallsRecord? e) => const ListEquality().hash([
        e?.hname,
        e?.hallMinimumCapacity,
        e?.capacity,
        e?.contactNumber,
        e?.hallImage,
        e?.location,
        e?.pricePerPerson
      ]);

  @override
  bool isValidKey(Object? o) => o is HallsRecord;
}
