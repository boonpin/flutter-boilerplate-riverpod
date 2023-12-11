import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import 'hello_world_provider.dart';

class HelloWorldWidget extends HookConsumerWidget {
  static String path = 'hello-world';

  const HelloWorldWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // We can use hooks inside HookConsumerWidget
    //final counter = useState(0);
    final hProvider = ref.watch(helloWorldProviderProvider);
    final hFutureProvider = ref.watch(helloWorldFutureProviderProvider);

    final hNotifier = ref.watch(helloWorldNotifierProvider);
    final hAsyncNotifier = ref.watch(helloWorldAsyncNotifierProvider);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Example')),
        body: Center(
          child: Column(
            children: [
              Text('Provider:$hProvider' ?? '-'),
              const Divider(),
              switch (hFutureProvider) {
                AsyncData(:final value) => Text('Future Provider: $value'),
                AsyncError() => const Text('Oops, something unexpected happened'),
                _ => const CircularProgressIndicator(),
              },
              const Divider(),
              Text('Notifier:$hNotifier' ?? '-'),
              const Divider(),
              switch (hAsyncNotifier) {
                AsyncData(:final value) => Text('Async Notifier: $value'),
                AsyncError() => const Text('Oops, something unexpected happened'),
                _ => const CircularProgressIndicator(),
              },
              TextButton(
                style: TextButton.styleFrom(),
                onPressed: () {
                  ref.read(helloWorldAsyncNotifierProvider.notifier).fetchValue();
                },
                child: const Text('Increment'),
              ),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
