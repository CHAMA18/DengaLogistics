// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_coordinates_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChartCoordinatesRecord> _$chartCoordinatesRecordSerializer =
    new _$ChartCoordinatesRecordSerializer();

class _$ChartCoordinatesRecordSerializer
    implements StructuredSerializer<ChartCoordinatesRecord> {
  @override
  final Iterable<Type> types = const [
    ChartCoordinatesRecord,
    _$ChartCoordinatesRecord
  ];
  @override
  final String wireName = 'ChartCoordinatesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ChartCoordinatesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.xAxis;
    if (value != null) {
      result
        ..add('X_Axis')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    value = object.yAxis;
    if (value != null) {
      result
        ..add('Y_Axis')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
  ChartCoordinatesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChartCoordinatesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'X_Axis':
          result.xAxis.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
        case 'Y_Axis':
          result.yAxis.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
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

class _$ChartCoordinatesRecord extends ChartCoordinatesRecord {
  @override
  final BuiltList<int>? xAxis;
  @override
  final BuiltList<String>? yAxis;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ChartCoordinatesRecord(
          [void Function(ChartCoordinatesRecordBuilder)? updates]) =>
      (new ChartCoordinatesRecordBuilder()..update(updates))._build();

  _$ChartCoordinatesRecord._({this.xAxis, this.yAxis, this.ffRef}) : super._();

  @override
  ChartCoordinatesRecord rebuild(
          void Function(ChartCoordinatesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChartCoordinatesRecordBuilder toBuilder() =>
      new ChartCoordinatesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChartCoordinatesRecord &&
        xAxis == other.xAxis &&
        yAxis == other.yAxis &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, xAxis.hashCode), yAxis.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChartCoordinatesRecord')
          ..add('xAxis', xAxis)
          ..add('yAxis', yAxis)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ChartCoordinatesRecordBuilder
    implements Builder<ChartCoordinatesRecord, ChartCoordinatesRecordBuilder> {
  _$ChartCoordinatesRecord? _$v;

  ListBuilder<int>? _xAxis;
  ListBuilder<int> get xAxis => _$this._xAxis ??= new ListBuilder<int>();
  set xAxis(ListBuilder<int>? xAxis) => _$this._xAxis = xAxis;

  ListBuilder<String>? _yAxis;
  ListBuilder<String> get yAxis => _$this._yAxis ??= new ListBuilder<String>();
  set yAxis(ListBuilder<String>? yAxis) => _$this._yAxis = yAxis;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ChartCoordinatesRecordBuilder() {
    ChartCoordinatesRecord._initializeBuilder(this);
  }

  ChartCoordinatesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _xAxis = $v.xAxis?.toBuilder();
      _yAxis = $v.yAxis?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChartCoordinatesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChartCoordinatesRecord;
  }

  @override
  void update(void Function(ChartCoordinatesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChartCoordinatesRecord build() => _build();

  _$ChartCoordinatesRecord _build() {
    _$ChartCoordinatesRecord _$result;
    try {
      _$result = _$v ??
          new _$ChartCoordinatesRecord._(
              xAxis: _xAxis?.build(), yAxis: _yAxis?.build(), ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'xAxis';
        _xAxis?.build();
        _$failedField = 'yAxis';
        _yAxis?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ChartCoordinatesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
