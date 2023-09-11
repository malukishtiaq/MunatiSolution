import 'package:flutter_test/flutter_test.dart';
import 'package:Munati/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('SocialRegistrationViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
