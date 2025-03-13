import 'package:flutter/material.dart';
import 'basic_widgets/scaffold_widget.dart';
import 'basic_widgets/dialog_widget.dart';
import 'basic_widgets/input_selection_widget.dart';
import 'basic_widgets/date_time_picker.dart';
import 'basic_widgets/floating_action_button.dart'; 
import 'basic_widgets/image_widget.dart';
import 'basic_widgets/text_widget.dart';
import 'basic_widgets/loading_cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Widgets Demo")),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(16),
          children: [
            _buildNavigationButton(context, "Scaffold Widget", const ScaffoldWidget()),
            _buildNavigationButton(context, "Dialog Widget", const DialogWidget()),
            _buildNavigationButton(context, "Input & Selection Widget", const InputSelectionWidget()),
            _buildNavigationButton(context, "Date Picker Widget", const DateTimePickerWidget()),
            _buildNavigationButton(context, "Floating Action Button", FloatingActionButtonExample()),
            _buildNavigationButton(context, "Image Widget", const MyImageWidget()),
            _buildNavigationButton(context, "Loading Cupertino", const LoadingCupertino()),
            _buildNavigationButton(context, "Text Widget", const MyTextWidget()),
          ],
        ),
      ),
    );
  }

  Widget _buildNavigationButton(BuildContext context, String title, Widget destination) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton(
        child: Text(title),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination),
          );
        },
      ),
    );
  }
}