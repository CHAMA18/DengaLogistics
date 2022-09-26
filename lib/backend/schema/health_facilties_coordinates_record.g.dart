// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_facilties_coordinates_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HealthFaciltiesCoordinatesRecord>
    _$healthFaciltiesCoordinatesRecordSerializer =
    new _$HealthFaciltiesCoordinatesRecordSerializer();

class _$HealthFaciltiesCoordinatesRecordSerializer
    implements StructuredSerializer<HealthFaciltiesCoordinatesRecord> {
  @override
  final Iterable<Type> types = const [
    HealthFaciltiesCoordinatesRecord,
    _$HealthFaciltiesCoordinatesRecord
  ];
  @override
  final String wireName = 'HealthFaciltiesCoordinatesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, HealthFaciltiesCoordinatesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.uth;
    if (value != null) {
      result
        ..add('UTH')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(LatLng)])));
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
  HealthFaciltiesCoordinatesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HealthFaciltiesCoordinatesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'UTH':
          result.uth.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(LatLng)]))!
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

class _$HealthFaciltiesCoordinatesRecord
    extends HealthFaciltiesCoordinatesRecord {
  @override
  final BuiltList<LatLng>? uth;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$HealthFaciltiesCoordinatesRecord(
          [void Function(HealthFaciltiesCoordinatesRecordBuilder)? updates]) =>
      (new HealthFaciltiesCoordinatesRecordBuilder()..update(updates))._build();

  _$HealthFaciltiesCoordinatesRecord._({this.uth, this.ffRef}) : super._();

  @override
  HealthFaciltiesCoordinatesRecord rebuild(
          void Function(HealthFaciltiesCoordinatesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HealthFaciltiesCoordinatesRecordBuilder toBuilder() =>
      new HealthFaciltiesCoordinatesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HealthFaciltiesCoordinatesRecord &&
        uth == other.uth &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, uth.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HealthFaciltiesCoordinatesRecord')
          ..add('uth', uth)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class HealthFaciltiesCoordinatesRecordBuilder
    implements
        Builder<HealthFaciltiesCoordinatesRecord,
            HealthFaciltiesCoordinatesRecordBuilder> {
  _$HealthFaciltiesCoordinatesRecord? _$v;

  ListBuilder<LatLng>? _uth;
  ListBuilder<LatLng> get uth => _$this._uth ??= new ListBuilder<LatLng>();
  set uth(ListBuilder<LatLng>? uth) => _$this._uth = uth;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  HealthFaciltiesCoordinatesRecordBuilder() {
    HealthFaciltiesCoordinatesRecord._initializeBuilder(this);
  }

  HealthFaciltiesCoordinatesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uth = $v.uth?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HealthFaciltiesCoordinatesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HealthFaciltiesCoordinatesRecord;
  }

  @override
  void update(void Function(HealthFaciltiesCoordinatesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HealthFaciltiesCoordinatesRecord build() => _build();

  _$HealthFaciltiesCoordinatesRecord _build() {
    _$HealthFaciltiesCoordinatesRecord _$result;
    try {
      _$result = _$v ??
          new _$HealthFaciltiesCoordinatesRecord._(
              uth: _uth?.build(), ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'uth';
        _uth?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HealthFaciltiesCoordinatesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
