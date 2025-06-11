import 'package:flutter/material.dart';
import 'user_data.dart';

class SliderPage extends StatefulWidget {
  final UserData userData;
  const SliderPage({super.key, required this.userData});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slider')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Slider(
              value: widget.userData.sliderValue,
              min: 0,
              max: 100,
              divisions: 100,
              label: widget.userData.sliderValue.round().toString(),
              onChanged: (value) {
                setState(() {
                  widget.userData.sliderValue = value;
                });
              },
            ),
            const SizedBox(height: 20),
            Text(
              'Aktueller Wert: ${widget.userData.sliderValue.round()}',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 30),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(
                  widget.userData.sliderValue / 100,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Zurück'),
            ),
          ],
        ),
      ),
    );
  }
}
