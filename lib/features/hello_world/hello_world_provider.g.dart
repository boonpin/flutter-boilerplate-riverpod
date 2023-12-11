// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hello_world_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$helloWorldProviderHash() =>
    r'3e70ebe6b49a6d319249a78382ca0a9fd890b7aa';

/// See also [helloWorldProvider].
@ProviderFor(helloWorldProvider)
final helloWorldProviderProvider = AutoDisposeProvider<String>.internal(
  helloWorldProvider,
  name: r'helloWorldProviderProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$helloWorldProviderHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef HelloWorldProviderRef = AutoDisposeProviderRef<String>;
String _$helloWorldFutureProviderHash() =>
    r'808d06b3194ec6585dc4325777a638adb2050410';

/// See also [helloWorldFutureProvider].
@ProviderFor(helloWorldFutureProvider)
final helloWorldFutureProviderProvider =
    AutoDisposeFutureProvider<String>.internal(
  helloWorldFutureProvider,
  name: r'helloWorldFutureProviderProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$helloWorldFutureProviderHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef HelloWorldFutureProviderRef = AutoDisposeFutureProviderRef<String>;
String _$helloWorldNotifierHash() =>
    r'c05787015e85b5880e0dd32865bbc1b39895311c';

/// See also [HelloWorldNotifier].
@ProviderFor(HelloWorldNotifier)
final helloWorldNotifierProvider =
    AutoDisposeNotifierProvider<HelloWorldNotifier, DateTime>.internal(
  HelloWorldNotifier.new,
  name: r'helloWorldNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$helloWorldNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$HelloWorldNotifier = AutoDisposeNotifier<DateTime>;
String _$helloWorldAsyncNotifierHash() =>
    r'75a9f292321a04dcae4a99d67b38327dbe498d22';

/// See also [HelloWorldAsyncNotifier].
@ProviderFor(HelloWorldAsyncNotifier)
final helloWorldAsyncNotifierProvider =
    AutoDisposeAsyncNotifierProvider<HelloWorldAsyncNotifier, int>.internal(
  HelloWorldAsyncNotifier.new,
  name: r'helloWorldAsyncNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$helloWorldAsyncNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$HelloWorldAsyncNotifier = AutoDisposeAsyncNotifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
