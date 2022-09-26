import 'package:built_value/serializer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../flutter_flow/flutter_flow_util.dart';

import 'schema/users_record.dart';
import 'schema/flight_history_record.dart';
import 'schema/health_facilties_coordinates_record.dart';
import 'schema/chart_coordinates_record.dart';
import 'schema/serializers.dart';

export 'dart:async' show StreamSubscription;
export 'package:cloud_firestore/cloud_firestore.dart';
export 'schema/index.dart';
export 'schema/serializers.dart';

export 'schema/users_record.dart';
export 'schema/flight_history_record.dart';
export 'schema/health_facilties_coordinates_record.dart';
export 'schema/chart_coordinates_record.dart';

/// Functions to query UsersRecords (as a Stream and as a Future).
Stream<List<UsersRecord>> queryUsersRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UsersRecord.collection,
      UsersRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UsersRecord>> queryUsersRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UsersRecord.collection,
      UsersRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<UsersRecord>> queryUsersRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      UsersRecord.collection,
      UsersRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query FlightHistoryRecords (as a Stream and as a Future).
Stream<List<FlightHistoryRecord>> queryFlightHistoryRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      FlightHistoryRecord.collection,
      FlightHistoryRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<FlightHistoryRecord>> queryFlightHistoryRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      FlightHistoryRecord.collection,
      FlightHistoryRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<FlightHistoryRecord>> queryFlightHistoryRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      FlightHistoryRecord.collection,
      FlightHistoryRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query HealthFaciltiesCoordinatesRecords (as a Stream and as a Future).
Stream<List<HealthFaciltiesCoordinatesRecord>>
    queryHealthFaciltiesCoordinatesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          HealthFaciltiesCoordinatesRecord.collection,
          HealthFaciltiesCoordinatesRecord.serializer,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<HealthFaciltiesCoordinatesRecord>>
    queryHealthFaciltiesCoordinatesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          HealthFaciltiesCoordinatesRecord.collection,
          HealthFaciltiesCoordinatesRecord.serializer,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<FFFirestorePage<HealthFaciltiesCoordinatesRecord>>
    queryHealthFaciltiesCoordinatesRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
        queryCollectionPage(
          HealthFaciltiesCoordinatesRecord.collection,
          HealthFaciltiesCoordinatesRecord.serializer,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        );

/// Functions to query ChartCoordinatesRecords (as a Stream and as a Future).
Stream<List<ChartCoordinatesRecord>> queryChartCoordinatesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ChartCoordinatesRecord.collection,
      ChartCoordinatesRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ChartCoordinatesRecord>> queryChartCoordinatesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ChartCoordinatesRecord.collection,
      ChartCoordinatesRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<ChartCoordinatesRecord>>
    queryChartCoordinatesRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
        queryCollectionPage(
          ChartCoordinatesRecord.collection,
          ChartCoordinatesRecord.serializer,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        );

Stream<List<T>> queryCollection<T>(Query collection, Serializer<T> serializer,
    {Query Function(Query)? queryBuilder,
    int limit = -1,
    bool singleRecord = false}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.snapshots().handleError((err) {
    print('Error querying $collection: $err');
  }).map((s) => s.docs
      .map(
        (d) => safeGet(
          () => serializers.deserializeWith(serializer, serializedData(d)),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

Future<List<T>> queryCollectionOnce<T>(
    Query collection, Serializer<T> serializer,
    {Query Function(Query)? queryBuilder,
    int limit = -1,
    bool singleRecord = false}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.get().then((s) => s.docs
      .map(
        (d) => safeGet(
          () => serializers.deserializeWith(serializer, serializedData(d)),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

extension QueryExtension on Query {
  Query whereIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereIn: null)
      : where(field, whereIn: list);

  Query whereNotIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereNotIn: null)
      : where(field, whereNotIn: list);

  Query whereArrayContainsAny(String field, List? list) =>
      (list?.isEmpty ?? true)
          ? where(field, arrayContainsAny: null)
          : where(field, arrayContainsAny: list);
}

class FFFirestorePage<T> {
  final List<T> data;
  final Stream<List<T>>? dataStream;
  final QueryDocumentSnapshot? nextPageMarker;

  FFFirestorePage(this.data, this.dataStream, this.nextPageMarker);
}

Future<FFFirestorePage<T>> queryCollectionPage<T>(
  Query collection,
  Serializer<T> serializer, {
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) async {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection).limit(pageSize);
  if (nextPageMarker != null) {
    query = query.startAfterDocument(nextPageMarker);
  }
  Stream<QuerySnapshot>? docSnapshotStream;
  QuerySnapshot docSnapshot;
  if (isStream) {
    docSnapshotStream = query.snapshots();
    docSnapshot = await docSnapshotStream.first;
  } else {
    docSnapshot = await query.get();
  }
  final getDocs = (QuerySnapshot s) => s.docs
      .map(
        (d) => safeGet(
          () => serializers.deserializeWith(serializer, serializedData(d)),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList();
  final data = getDocs(docSnapshot);
  final dataStream = docSnapshotStream?.map(getDocs);
  final nextPageToken = docSnapshot.docs.isEmpty ? null : docSnapshot.docs.last;
  return FFFirestorePage(data, dataStream, nextPageToken);
}

// Creates a Firestore document representing the logged in user if it doesn't yet exist
Future maybeCreateUser(User user) async {
  final userRecord = UsersRecord.collection.doc(user.uid);
  final userExists = await userRecord.get().then((u) => u.exists);
  if (userExists) {
    return;
  }

  final userData = createUsersRecordData(
    email: user.email,
    displayName: user.displayName,
    photoUrl: user.photoURL,
    uid: user.uid,
    phoneNumber: user.phoneNumber,
    createdTime: getCurrentTimestamp,
  );

  await userRecord.set(userData);
}
