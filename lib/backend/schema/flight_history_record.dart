import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'flight_history_record.g.dart';

abstract class FlightHistoryRecord
    implements Built<FlightHistoryRecord, FlightHistoryRecordBuilder> {
  static Serializer<FlightHistoryRecord> get serializer =>
      _$flightHistoryRecordSerializer;

  @BuiltValueField(wireName: 'Destination')
  String? get destination;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FlightHistoryRecordBuilder builder) =>
      builder..destination = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Flight_History');

  static Stream<FlightHistoryRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FlightHistoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FlightHistoryRecord._();
  factory FlightHistoryRecord(
          [void Function(FlightHistoryRecordBuilder) updates]) =
      _$FlightHistoryRecord;

  static FlightHistoryRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFlightHistoryRecordData({
  String? destination,
}) {
  final firestoreData = serializers.toFirestore(
    FlightHistoryRecord.serializer,
    FlightHistoryRecord(
      (f) => f..destination = destination,
    ),
  );

  return firestoreData;
}
