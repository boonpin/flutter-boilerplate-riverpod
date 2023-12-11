import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dart:async';
import 'package:intl/intl.dart';

part 'hello_world_provider.g.dart';

// provider
@riverpod
String helloWorldProvider(HelloWorldProviderRef ref) {
  return 'Hello world';
}

// future provider
@riverpod
Future<String> helloWorldFutureProvider(HelloWorldFutureProviderRef ref) async {
  await Future.delayed(const Duration(seconds: 2));
  return DateTime.now().toIso8601String();
}

@riverpod
class HelloWorldNotifier extends _$HelloWorldNotifier {
  late final Timer _timer;
  DateTime date = DateTime.now();

  HelloWorldNotifier() : super() {
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      state = DateTime.now();
    });
    // ref.onDispose(() {
    //   if (_timer.isActive) {
    //     _timer.cancel();
    //   }
    // });
  }

  @override
  DateTime build() {
    return date;
  }
}

// async notifier
@riverpod
class HelloWorldAsyncNotifier extends _$HelloWorldAsyncNotifier {
  int counter = 0;

  Future<int> _increment() async {
    await Future.delayed(const Duration(seconds: 2));
    counter++;

    if (counter == 2) {
      throw Error();
    }
    return counter;
  }

  @override
  FutureOr<int> build() {
    return counter;
  }

  Future<void> fetchValue() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _increment());
  }
}
