import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:assignment/assignment.dart';

void main() {
  const MethodChannel channel = MethodChannel('assignment');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await Assignment.platformVersion, '42');
  });
}
