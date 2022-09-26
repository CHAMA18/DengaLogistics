import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    _Data = await secureStorage.getString('ff_Data') ?? _Data;
    _LocalState = await secureStorage.getInt('ff_LocalState') ?? _LocalState;
    _YAxis = await secureStorage.getStringList('ff_YAxis') ?? _YAxis;
    _StaticVariable =
        await secureStorage.getInt('ff_StaticVariable') ?? _StaticVariable;
    _DepositVariable =
        await secureStorage.getInt('ff_DepositVariable') ?? _DepositVariable;
  }

  late FlutterSecureStorage secureStorage;

  String _Data = '';
  String get Data => _Data;
  set Data(String _value) {
    _Data = _value;
    secureStorage.setString('ff_Data', _value);
  }

  void deleteData() {
    secureStorage.delete(key: 'ff_Data');
  }

  int _LocalState = 0;
  int get LocalState => _LocalState;
  set LocalState(int _value) {
    _LocalState = _value;
    secureStorage.setInt('ff_LocalState', _value);
  }

  void deleteLocalState() {
    secureStorage.delete(key: 'ff_LocalState');
  }

  List<int> XAxis = [0, 90, 90, 90, 60, 190, 89, 34, 78, 45];

  List<String> _YAxis = ['January', 'February', 'March', 'April'];
  List<String> get YAxis => _YAxis;
  set YAxis(List<String> _value) {
    _YAxis = _value;
    secureStorage.setStringList('ff_YAxis', _value);
  }

  void deleteYAxis() {
    secureStorage.delete(key: 'ff_YAxis');
  }

  void addToYAxis(String _value) {
    _YAxis.add(_value);
    secureStorage.setStringList('ff_YAxis', _YAxis);
  }

  void removeFromYAxis(String _value) {
    _YAxis.remove(_value);
    secureStorage.setStringList('ff_YAxis', _YAxis);
  }

  int _StaticVariable = 0;
  int get StaticVariable => _StaticVariable;
  set StaticVariable(int _value) {
    _StaticVariable = _value;
    secureStorage.setInt('ff_StaticVariable', _value);
  }

  void deleteStaticVariable() {
    secureStorage.delete(key: 'ff_StaticVariable');
  }

  int _DepositVariable = 0;
  int get DepositVariable => _DepositVariable;
  set DepositVariable(int _value) {
    _DepositVariable = _value;
    secureStorage.setInt('ff_DepositVariable', _value);
  }

  void deleteDepositVariable() {
    secureStorage.delete(key: 'ff_DepositVariable');
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await write(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await write(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await write(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await write(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await write(key: key, value: ListToCsvConverter().convert([value]));
}
