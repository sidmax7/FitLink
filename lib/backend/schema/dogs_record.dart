import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class workoutsRecord extends FirestoreRecord {
  workoutsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userAssociation" field.
  DocumentReference? _userAssociation;
  DocumentReference? get userAssociation => _userAssociation;
  bool hasUserAssociation() => _userAssociation != null;

  // "workoutPhoto" field.
  String? _workoutPhoto;
  String get workoutPhoto => _workoutPhoto ?? '';
  bool hasworkoutPhoto() => _workoutPhoto != null;

  // "workoutName" field.
  String? _workoutName;
  String get workoutName => _workoutName ?? '';
  bool hasworkoutName() => _workoutName != null;

  // "workoutType" field.
  String? _workoutType;
  String get workoutType => _workoutType ?? '';
  bool hasworkoutType() => _workoutType != null;

  // "workoutAge" field.
  String? _workoutAge;
  String get workoutAge => _workoutAge ?? '';
  bool hasworkoutAge() => _workoutAge != null;

  // "workoutBio" field.
  String? _workoutBio;
  String get workoutBio => _workoutBio ?? '';
  bool hasworkoutBio() => _workoutBio != null;

  void _initializeFields() {
    _userAssociation = snapshotData['userAssociation'] as DocumentReference?;
    _workoutPhoto = snapshotData['workoutPhoto'] as String?;
    _workoutName = snapshotData['workoutName'] as String?;
    _workoutType = snapshotData['workoutType'] as String?;
    _workoutAge = snapshotData['workoutAge'] as String?;
    _workoutBio = snapshotData['workoutBio'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('workouts');

  static Stream<workoutsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => workoutsRecord.fromSnapshot(s));

  static Future<workoutsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => workoutsRecord.fromSnapshot(s));

  static workoutsRecord fromSnapshot(DocumentSnapshot snapshot) => workoutsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static workoutsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      workoutsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'workoutsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is workoutsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createworkoutsRecordData({
  DocumentReference? userAssociation,
  String? workoutPhoto,
  String? workoutName,
  String? workoutType,
  String? workoutAge,
  String? workoutBio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userAssociation': userAssociation,
      'workoutPhoto': workoutPhoto,
      'workoutName': workoutName,
      'workoutType': workoutType,
      'workoutAge': workoutAge,
      'workoutBio': workoutBio,
    }.withoutNulls,
  );

  return firestoreData;
}

class workoutsRecordDocumentEquality implements Equality<workoutsRecord> {
  const workoutsRecordDocumentEquality();

  @override
  bool equals(workoutsRecord? e1, workoutsRecord? e2) {
    return e1?.userAssociation == e2?.userAssociation &&
        e1?.workoutPhoto == e2?.workoutPhoto &&
        e1?.workoutName == e2?.workoutName &&
        e1?.workoutType == e2?.workoutType &&
        e1?.workoutAge == e2?.workoutAge &&
        e1?.workoutBio == e2?.workoutBio;
  }

  @override
  int hash(workoutsRecord? e) => const ListEquality().hash([
        e?.userAssociation,
        e?.workoutPhoto,
        e?.workoutName,
        e?.workoutType,
        e?.workoutAge,
        e?.workoutBio
      ]);

  @override
  bool isValidKey(Object? o) => o is workoutsRecord;
}
