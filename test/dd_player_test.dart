import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dd_player/player.dart';

void main() {
  const MethodChannel channel = MethodChannel('dd_player');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await DdPlayer.platformVersion, '42');
  });
}
