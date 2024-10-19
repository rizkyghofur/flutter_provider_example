import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/counter_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // Read the provider and call its increment method.
          // This is a shorthand for Provider.of<CounterProvider>(context, listen: false).increment().
          FloatingActionButton(
            onPressed: () => context.read<CounterProvider>().increment(),
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          // Read the provider and call its decrement method.
          // This is a shorthand for Provider.of<CounterProvider>(context, listen: false).decrement().
          FloatingActionButton(
            onPressed: () => context.read<CounterProvider>().decrement(),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
      appBar: AppBar(
        title: const Text('Counter Provider'),
      ),
      body: Center(
        child: Text(
          // Watch the provider and get its number.
          // This is a shorthand for Provider.of<CounterProvider>(context, listen: true).number.toString().
          // The `listen: true` argument means that the widget will be rebuilt when the provider changes.
          context.watch<CounterProvider>().number.toString(),
          style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
