// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flight_history_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FlightHistoryRecord> _$flightHistoryRecordSerializer =
    new _$FlightHistoryRecordSerializer();

class _$FlightHistoryRecordSerializer
    implements StructuredSerializer<FlightHistoryRecord> {
  @override
  final Iterable<Type> types = const [
    FlightHistoryRecord,
    _$FlightHistoryRecord
  ];
  @override
  final String wireName = 'FlightHistoryRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, FlightHistoryRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.destination;
    if (value != null) {
      result
        ..add('Destination')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  FlightHistoryRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FlightHistoryRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Destination':
          result.destination = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$FlightHistoryRecord extends FlightHistoryRecord {
  @override
  final String? destination;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FlightHistoryRecord(
          [void Function(FlightHistoryRecordBuilder)? updates]) =>
      (new FlightHistoryRecordBuilder()..update(updates))._build();

  _$FlightHistoryRecord._({this.destination, this.ffRef}) : super._();

  @override
  FlightHistoryRecord rebuild(
          void Function(FlightHistoryRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FlightHistoryRecordBuilder toBuilder() =>
      new FlightHistoryRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FlightHistoryRecord &&
        destination == other.destination &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, destination.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FlightHistoryRecord')
          ..add('destination', destination)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FlightHistoryRecordBuilder
    implements Builder<FlightHistoryRecord, FlightHistoryRecordBuilder> {
  _$FlightHistoryRecord? _$v;

  String? _destination;
  String? get destination => _$this._destination;
  set destination(String? destination) => _$this._destination = destination;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FlightHistoryRecordBuilder() {
    FlightHistoryRecord._initializeBuilder(this);
  }

  FlightHistoryRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _destination = $v.destination;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FlightHistoryRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FlightHistoryRecord;
  }

  @override
  void update(void Function(FlightHistoryRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FlightHistoryRecord build() => _build();

  _$FlightHistoryRecord _build() {
    final _$result = _$v ??
        new _$FlightHistoryRecord._(destination: destination, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
