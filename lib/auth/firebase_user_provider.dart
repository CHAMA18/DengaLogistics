import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class DengaLogisticsFirebaseUser {
  DengaLogisticsFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

DengaLogisticsFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<DengaLogisticsFirebaseUser> dengaLogisticsFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<DengaLogisticsFirebaseUser>(
            (user) => currentUser = DengaLogisticsFirebaseUser(user));
