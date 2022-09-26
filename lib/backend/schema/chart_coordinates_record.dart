import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'chart_coordinates_record.g.dart';

abstract class ChartCoordinatesRecord
    implements Built<ChartCoordinatesRecord, ChartCoordinatesRecordBuilder> {
  static Serializer<ChartCoordinatesRecord> get serializer =>
      _$chartCoordinatesRecordSerializer;

  @BuiltValueField(wireName: 'X_Axis')
  BuiltList<int>? get xAxis;

  @BuiltValueField(wireName: 'Y_Axis')
  BuiltList<String>? get yAxis;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ChartCoordinatesRecordBuilder builder) =>
      builder
        ..xAxis = ListBuilder()
        ..yAxis = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Chart_Coordinates');

  static Stream<ChartCoordinatesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ChartCoordinatesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ChartCoordinatesRecord._();
  factory ChartCoordinatesRecord(
          [void Function(ChartCoordinatesRecordBuilder) updates]) =
      _$ChartCoordinatesRecord;

  static ChartCoordinatesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createChartCoordinatesRecordData() {
  final firestoreData = serializers.toFirestore(
    ChartCoordinatesRecord.serializer,
    ChartCoordinatesRecord(
      (c) => c
        ..xAxis = null
        ..yAxis = null,
    ),
  );

  return firestoreData;
}
