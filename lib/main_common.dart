// Removed unused imports
import 'package:flutter/widgets.dart';


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'main.dart';

void runAppWithRepositories({
  required List<SingleChildWidget> providers,
}) {
  runApp(
    MultiProvider(
      providers: providers,
      child: const BlaBlaApp(),
    ),
  );
}