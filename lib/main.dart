import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/home_page.dart';
import 'providers/counter_provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Use the MultiProvider widget to create a provider tree that can be
    // accessed by all widgets in the app.
    //
    // The ChangeNotifierProvider widget is used to create a provider that
    // wraps a ChangeNotifier (our CounterProvider class). This provider
    // will automatically call notifyListeners() whenever the notifyListeners()
    // method is called on the wrapped ChangeNotifier.
    //
    // The create callback is used to create an instance of the
    // ChangeNotifier. In this case, we create an instance of
    // CounterProvider with an initial value of 0.
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CounterProvider(number: 0),
        ),
      ],
      // The child widget is the top level widget of the app.
      // In this case, we use the MaterialApp widget, with the home
      // property set to the HomePage widget.
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
