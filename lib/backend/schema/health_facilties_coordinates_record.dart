import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'health_facilties_coordinates_record.g.dart';

abstract class HealthFaciltiesCoordinatesRecord
    implements
        Built<HealthFaciltiesCoordinatesRecord,
            HealthFaciltiesCoordinatesRecordBuilder> {
  static Serializer<HealthFaciltiesCoordinatesRecord> get serializer =>
      _$healthFaciltiesCoordinatesRecordSerializer;

  @BuiltValueField(wireName: 'UTH')
  BuiltList<LatLng>? get uth;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(
          HealthFaciltiesCoordinatesRecordBuilder builder) =>
      builder..uth = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Health_Facilties_Coordinates');

  static Stream<HealthFaciltiesCoordinatesRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<HealthFaciltiesCoordinatesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  HealthFaciltiesCoordinatesRecord._();
  factory HealthFaciltiesCoordinatesRecord(
          [void Function(HealthFaciltiesCoordinatesRecordBuilder) updates]) =
      _$HealthFaciltiesCoordinatesRecord;

  static HealthFaciltiesCoordinatesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createHealthFaciltiesCoordinatesRecordData() {
  final firestoreData = serializers.toFirestore(
    HealthFaciltiesCoordinatesRecord.serializer,
    HealthFaciltiesCoordinatesRecord(
      (h) => h..uth = null,
    ),
  );

  return firestoreData;
}
