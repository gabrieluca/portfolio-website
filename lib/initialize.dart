import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';

initialize() {
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}
