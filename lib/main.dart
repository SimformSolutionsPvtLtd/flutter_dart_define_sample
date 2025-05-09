import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dart Define Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Dart Define Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool shouldShowSecretKey = false;

  String? value;

  void getSecretKey() {
    setState(() {
      value = const String.fromEnvironment('SECRET_KEY');
      shouldShowSecretKey = !shouldShowSecretKey;
    });
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) => false,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: value != null && shouldShowSecretKey
              ? Text(
                  'Secret Key :\n${value!}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                    height: 1.5,
                  ),
                )
              : const SizedBox.shrink(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: getSecretKey,
          child: Icon(
            shouldShowSecretKey ? Icons.visibility_off : Icons.visibility,
          ),
        ),
      ),
    );
  }
}
